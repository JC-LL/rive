require_relative 'isa'
require_relative 'memory'
require_relative 'disassembler'
require_relative 'utils'

module Rive

  class Iss

    include Utils
    include ISA

    attr_accessor :options

    def initialize options={}
      @options=options
      configure
    end

    def configure
      puts "=> configuring processor"
      @mem_size=options[:mem_size] || 2**20
      @memory=Memory.new(@mem_size)
      @reg=(0..31).map{|i| [i,0]}.to_h
      @sp=@reg[2]=@mem_size
      @log=File.open("exec.log",'w')
      @pc=options[:start_address] || 0x0
      @nb_instr=0
    end

    def load filename
      puts "=> loading '#{filename}'"
      @memory.init_from_file filename
    end

    def disassemble
      puts "=> dissassemble"
      Disassembler.new.disassemble @memory
    end

    def print_state instruction
      @log.puts "╔═══════╤════════════╦════════╤════════════╦════════╤════════════╦════════╤════════════╗\n"
      @log.puts "║ x0  z │ 0x%08x ║  x8 fp │ 0x%08x ║ x16 a6 │ 0x%08x ║ x24 s8 │ 0x%08x ║\n" %[@reg[0], @reg[8],  @reg[16], @reg[24]]
      @log.puts "║ x1 ra │ 0x%08x ║  x9 s1 │ 0x%08x ║ x17 a7 │ 0x%08x ║ x25 s9 │ 0x%08x ║\n" %[@reg[1], @reg[0],  @reg[17], @reg[25]]
      @log.puts "║ x2 sp │ 0x%08x ║ x10 a0 │ 0x%08x ║ x18 s2 │ 0x%08x ║ x26 s10│ 0x%08x ║\n" %[@reg[2], @reg[10], @reg[18], @reg[26]]
      @log.puts "║ x3 gp │ 0x%08x ║ x11 a1 │ 0x%08x ║ x19 s3 │ 0x%08x ║ x27 s11│ 0x%08x ║\n" %[@reg[3], @reg[11], @reg[19], @reg[27]]
      @log.puts "║ x4 tp │ 0x%08x ║ x12 a2 │ 0x%08x ║ x20 s4 │ 0x%08x ║ x28 t3 │ 0x%08x ║\n" %[@reg[4], @reg[12], @reg[20], @reg[28]]
      @log.puts "║ x5 t0 │ 0x%08x ║ x13 a3 │ 0x%08x ║ x21 s5 │ 0x%08x ║ x29 t4 │ 0x%08x ║\n" %[@reg[5], @reg[13], @reg[21], @reg[29]]
      @log.puts "║ x6 t1 │ 0x%08x ║ x14 a4 │ 0x%08x ║ x22 s6 │ 0x%08x ║ x30 t5 │ 0x%08x ║\n" %[@reg[6], @reg[14], @reg[22], @reg[30]]
      @log.puts "║ x7 t2 │ 0x%08x ║ x15 a5 │ 0x%08x ║ x23 s7 │ 0x%08x ║ x31 t6 │ 0x%08x ║\n" %[@reg[7], @reg[15], @reg[23], @reg[31]]
      @log.puts "╠═══════╪════════════╬════════╪════════════╬════════╪════════════╩════════╧════════════╣\n"
      @log.puts "║    pc │ 0x%08x ║  instr │ 0x%08x ║   mode │ machine                          ║\n" %[@pc, instruction]
      @log.puts "╚═══════╧════════════╩════════╧════════════╩════════╧══════════════════════════════════╝\n"
    end

    def fetch
      instruction=@memory.read_32_bits @pc
      @pc+=4
      instruction
    end

    def run filename
      puts "=> running"
      @running=true
      while @running
        #step
        @nb_instr+=1
        puts "instr #{@nb_instr} pc=0x#{@pc.to_s(16)} (#{@pc})".center(80,'=')
        instruction=fetch()
        decode_execute(instruction)
        print_state(instruction)
      end
    end

    def decode_execute instruction
      #puts instruction.to_s(16).rjust(8,'0') if @options[:verbose]
      opcode=instruction & 0b1111111 # 7 bits LSB
      format=ISA::OPCODE_FORMAT_H[opcode]
      field={}
      ISA::FORMAT_ENCODING_H[format].each do |field_name,field_range|
        field[field_name]=bitfield(instruction,field_range)
      end
      puts @disassembler.disassemble(field) if @options[:verbose]
      case opcode=field[:opcode]
      when OPCODE_LUI #lui
        imm =field[:imm_31_12] << 12
        rd= field[:rd]
        text = [:lui,imm]
        @reg[rd]=imm
      when OPCODE_AUIPC #===== U format =====
        imm =field[:imm_31_12] << 12
        rd= field[:rd] #BUG fix. Was missing !
        text = [:auipc,@pc+imm]
        @reg[rd]=(@pc-4)+imm #fetch has already incremented pc+4
      when OPCODE_JAL #===== J format =====
        # JAL
        @pc-=4 #fetch has prepared @pc+=4 already
        imm =field[:imm_20]    << 20
        imm+=field[:imm_10_1]  <<  1
        imm+=field[:imm_11]    << 11
        imm+=field[:imm_19_12] << 12
        imm=(imm-2**21) if imm[20]==1 #signed 21 bits 20...0
        rd= field[:rd]
        @reg[rd]=@pc+4 #in bytes
        @pc+=imm
      when OPCODE_JALR #===== I format =====
        @pc-=4 #fetch has prepared @pc+=4 already
        imm  = field[:imm_11_0]
        rs1  = field[:rs1]
        rd   = field[:rd]
        text = [:jalr,rd,rs1,imm]
        imm=(imm-2**12) if imm[11]==1
        puts "imm=#{imm}"
        @reg[rd]=@pc+4 #in bytes
        puts "reg#{rs1}=#{@reg[rs1]}"
        @pc=@reg[rs1]+imm
        puts "pc=#{@pc}"
      when OPCODE_BRANCH #===== B format =====
        #beq,bne,blt,bge,bltu,bge
        @pc-=4 #fetch has prepared @pc+=4 already
        rs1 =field[:rs1]
        rs2 =field[:rs2]
        imm =field[:imm_12]   << 12
        imm+=field[:imm_10_5] << 5
        imm+=field[:imm_4_1]  << 1
        imm+=field[:imm_11]   << 11
        imm-=2**13 if imm[12]==1

        case funct3=field[:funct3]
        when 0b000
          text = [:beq,rs1,rs2,imm]
          if sx(@reg[rs1]) == sx(@reg[rs2])
            @pc+=imm
          else
            @pc+=4
          end
        when 0b001
          text = [:bne,rs1,rs2,imm]
          if sx(@reg[rs1]) != sx(@reg[rs2])
            @pc+=imm
          else
            @pc+=4
          end
        when 0b100
          text = [:blt,rs1,rs2,imm]
          if sx(@reg[rs1]) < sx(@reg[rs2])
            @pc+=imm
          else
            @pc+=4
          end
        when 0b101
          text = [:bge,rs1,rs2,imm]
          if sx(@reg[rs1]) >= sx(@reg[rs2])
            @pc+=imm
          else
            @pc+=4
          end
        when 0b110
          text = [:bltu,rs1,rs2,imm]
          if ux(@reg[rs1]) < ux(@reg[rs2])
            @pc+=imm
          else
            @pc+=4
          end
        when 0b111
          text = [:bgeu,rs1,rs2,imm]
          if ux(@reg[rs1]) >= ux(@reg[rs2])
            @pc+=imm
          else
            @pc+=4
          end
        else
          raise "unknown funct3=0b#{funct3.to_s(2)} for opcode=0b1100011"
        end
      when OPCODE_LOAD #==== i_type
        imm =field[:imm_11_0]
        imm-=2**12 if imm[11]==1
        rs1 =field[:rs1]
        rd  =field[:rd]
        case funct3=field[:funct3]
        when 0b000 #load byte
          text = [:lb,rd,rs1,imm]
          @reg[rd]=sx(@memory[@reg[rs1]+imm] & 0xFF,8) #load byte, then sign extend to 32, from 8 bits
        when 0b001 #load half word
          text = [:lh,rd,rs1,imm]
          addr=@reg[rs1]+imm
          @reg[rd]=sx(@memory.read_32_bits(addr) & 0xFFFF,16) #load half, then sign extend to 32, from 16 bits
        when 0b010
          text = [:lw,rd,rs1,imm]
          puts @reg[rs1].to_s(16)
          puts imm
          addr=@reg[rs1]+imm
          puts "addr=reg[#{rs1}]+#{imm}=#{@reg[rs1]}+#{imm}=0x#{addr.to_s(16)}"
          puts "lw @ 0x#{addr.to_s(16)}"
          #@reg[rd]=sx(@memory[addr] & 0xFFFFFFFF,32)
          @reg[rd]=sx(@memory.read_32_bits(addr),32)
        when 0b100
          text = [:lbu,rd,rs1,imm]
          addr=@reg[rs1]+imm
          @reg[rd]=ux(@memory.read_32_bits(addr) & 0xFF,8) #load byte, then unsigned extend to 32, from 8 bits
        when 0b101
          text = [:lhu,rd,rs1,imm]
          addr=@reg[rs1]+imm
          @reg[rd]=ux(@memory.read_32_bits(addr) & 0xFFFF,16) #load byte, then unsigned extend to 32, from 16 bits
        else
          raise "unknown funct3=0b#{funct3.to_s(2)} for opcode=0b0100011"
        end
        showregs(rd)
      when OPCODE_STORE #==== s_type
        rs1=field[:rs1]
        rs2=field[:rs2]
        imm=(field[:imm_11_5] << 5) + field[:imm_4_0]
        imm-=2**12 if imm[11]==1
        case funct3=field[:funct3]
        when 0b000
          text = [:sb,rs1,rs2,imm]
          addr=@reg[rs1]+imm
          @memory.write_32_bits addr,@reg[rs2] & 0xF #u8
        when 0b001
          text = [:sh,rs1,rs2,imm]
          addr=@reg[rs1]+imm
          @memory.write_32_bits addr,@reg[rs2] & 0xFF #u16
        when 0b010
          text = [:sw,rs1,rs2,imm]
          addr=@reg[rs1]+imm
          @memory.write_32_bits addr, @reg[rs2] # u32
        else
          raise "unknown funct3=0b#{funct3.to_s(2)} for opcode=0b0100011"
        end
        @memory.show_mem(addr)
      when OPCODE_INT_IMM #=== i_type
        #addi,slti,sltiu,xori,ori,andi,slli,srli
        rs1=field[:rs1]
        rd =field[:rd]
        imm=field[:imm_11_0]
        imm-=2**12 if imm[11]==1
        case funct3=field[:funct3]
        when 0b000
          text = [:addi,rd,rs1,imm]
          puts "reg[#{rs1}]=0x#{@reg[rs1].to_s(16)}"
          puts "imm=#{imm}(dec)"
          @reg[rd]=(sx(@reg[rs1]) + imm) & 0xFFFFFFFF
        when 0b010
          text = [:slti,rd,rs1,imm]
          @reg[rd]=(sx(@reg[rs1]) < sx(imm)) ? 1 : 0
        when 0b011
          text = [:sltiu,rd,rs1,imm]
          @reg[rd]=(ux(@reg[rs1]) < ux(imm)) ? 1 : 0
        when 0b100
          text = [:xori,rd,rs1,imm]
          @reg[rd]=ux(@reg[rs1]) ^ ux(imm)
        when 0b110
          text = [:ori,rd,rs1,imm]
          @reg[rd]=ux(@reg[rs1]) | ux(imm)
        when 0b111
          text = [:andi,rd,rs1,imm]
          @reg[rd]=ux(@reg[rs1]) & ux(imm)
        when 0b001
          text = [:slli,rd,rs1,imm]
          puts imm
          @reg[rd]=ux(@reg[rs1]) << imm #signed imm ????
        when 0b101
          #srli,srai
          imm=field[:shamt]
          imm-=2**5 if imm[4]==1
          case imm_11_5=field[:imm_11_5]
          when 0b0000000
            text = [:srli,rd,rs1,imm]
            @reg[rd]=ux(@reg[rs1]) >> imm #signed imm ????
          when 0b0100000
            text = [:srai,rd,rs1,imm]
            @reg[rd]=sx(@reg[rs1]) >> imm #signed imm ????
          else
            raise "unknown case for opcode=0b0010011 with func3=0b101 : imm_11_5=0x#{imm_11_5.to_s(16)}"
          end
        else
          raise "unknown funct3 '0b#{funct3.to_s(2)}'"
        end
        showregs(rd)
      when OPCODE_INT_REG #r_type
        rs1=field[:rs1]
        rs2=field[:rs2]
        rd =field[:rd]
        case funct3=field[:funct3]
        when 0b000 #add,#sub
          case imm_11_5=field[:funct7]
          when 0b0000000
            text = [:add,rd,rs1,rs2]
            @reg[rd]=(sx(@reg[rs1]) + sx(@reg[rs2])) & 0xFFFFFFFF
          when 0b0100000
            text = [:sub,rd,rs1,rs2]
            @reg[rd]=(sx(@reg[rs1]) - sx(@reg[rs2])) & 0xFFFFFFFF
          else
            raise "unknown case for opcode=0b0110011 with func3=0b000"
          end
        when 0b001
          text = [:sll,rd,rs1,rs2]
          @reg[rd]=ux(@reg[rs1]) << (@reg[rs2] & 0b111111)
        when 0b010
          text = [:slt,rd,rs1,rs2]
          @reg[rd]=(sx(@reg[rs1]) < sx(@reg[rs2])) ? 1 : 0
        when 0b011
          text = [:sltu,rd,rs1,rs2]
          @reg[rd]=(ux(@reg[rs1]) < ux(@reg[rs2])) ? 1 : 0
        when 0b100
          text = [:xor,rd,rs1,rs2]
          @reg[rd]=ux(@reg[rs1]) ^ ux(@reg[rs2])
        when 0b101
          #srl,sra
          case imm_11_5=(field[:imm_11_0] & 0b1111111) # 7 bits
          when 0b0000000
            text = [:srl,rd,rs1,rs2]
            @reg[rd]=ux(@reg[rs1]) >> (@reg[rs2] & 0b111111)
          when 0b0100000
            text = [:sra,rd,rs1,rs2]
            @reg[rd]=sx(@reg[rs1]) >> (@reg[rs2] & 0b111111)
          else
            raise "unknown case for i_type with func3=0b101"
          end
        when 0b110
          text = [:or,rd,rs1,rs2]
          @reg[rd]=ux(@reg[rs1]) | ux(@reg[rs2])
        when 0b111
          text = [:and,rd,rs1,rs2]
          @reg[rd]=ux(@reg[rs1]) & ux(@reg[rs2])
        else
          raise "unknown funct3=0b#{funct3.to_s(2)} for opcode=0b0100011"
        end
        showregs(rd)
      when 0b0001111
        #fence, fence.i
      when 0b1100111
        #ecall,ebreak
      when 0b1110011
        #csrrw,etc
      when OPCODE_INT_MUL
        #mul etc
        case funct3=field[:funct3]
        when 0b000
          text = [:mul]
        when 0b001
          text = [:mulh]
        when 0b010
          text = [:mulhsu]
        when 0b011
          text = [:mulhu]
        when 0b100
          text = [:div]
        when 0b101
          text = [:divu]
        when 0b110
          text = [:rem]
        when 0b111
          text = [:remu]
        else
          raise "unknown funct3=0b#{funct3.to_s(2)} for opcode=0b0110011"
        end
      else
        raise "unknown opcode '0b#{opcode.to_s(2).rjust(7,'0')}' in #{field}"
      end
      @reg[0]=0 #force
    end
  end
end
