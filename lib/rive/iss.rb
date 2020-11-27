# coding: utf-8
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
      @mem_size=options[:memsize] || 2**20
      @memory=Memory.new(@mem_size)
      @reg   =Array.new(32){0}
      @sp=@reg[2]=@mem_size
      @log=File.open("ruby_reg_state.log",'w')
      @counter_pc_log=File.open("ruby_counter_pc.log",'w')
      @pc=options[:start_address] || 0x0
      @instruction_count=0
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
      @log.puts "╔═══════╤════════════╦════════╤════════════╦════════╤════════════╦════════╤════════════╗"
    	@log.puts "║ x0  z │ 0x%08x ║  x8 fp │ 0x%08x ║ x16 a6 │ 0x%08x ║ x24 s8 │ 0x%08x ║" % [@reg[0],  @reg[8], @reg[16], @reg[24]]
    	@log.puts "║ x1 ra │ 0x%08x ║  x9 s1 │ 0x%08x ║ x17 a7 │ 0x%08x ║ x25 s9 │ 0x%08x ║" % [@reg[1],  @reg[0], @reg[17], @reg[25]]
    	@log.puts "║ x2 sp │ 0x%08x ║ x10 a0 │ 0x%08x ║ x18 s2 │ 0x%08x ║ x26 s10│ 0x%08x ║" % [@reg[2], @reg[10], @reg[18], @reg[26]]
    	@log.puts "║ x3 gp │ 0x%08x ║ x11 a1 │ 0x%08x ║ x19 s3 │ 0x%08x ║ x27 s11│ 0x%08x ║" % [@reg[3], @reg[11], @reg[19], @reg[27]]
    	@log.puts "║ x4 tp │ 0x%08x ║ x12 a2 │ 0x%08x ║ x20 s4 │ 0x%08x ║ x28 t3 │ 0x%08x ║" % [@reg[4], @reg[12], @reg[20], @reg[28]]
    	@log.puts "║ x5 t0 │ 0x%08x ║ x13 a3 │ 0x%08x ║ x21 s5 │ 0x%08x ║ x29 t4 │ 0x%08x ║" % [@reg[5], @reg[13], @reg[21], @reg[29]]
    	@log.puts "║ x6 t1 │ 0x%08x ║ x14 a4 │ 0x%08x ║ x22 s6 │ 0x%08x ║ x30 t5 │ 0x%08x ║" % [@reg[6], @reg[14], @reg[22], @reg[30]]
    	@log.puts "║ x7 t2 │ 0x%08x ║ x15 a5 │ 0x%08x ║ x23 s7 │ 0x%08x ║ x31 t6 │ 0x%08x ║" % [@reg[7], @reg[15], @reg[23], @reg[31]]
    	@log.puts "╠═══════╪════════════╬════════╪════════════╬════════╪════════════╩═╤══════╧════════════╣"
    	@log.puts "║    pc │ 0x%08x ║  instr │ 0x%08x ║   mode │ machine      │ %17d ║" % [@pc, instruction,@instruction_count]
    	@log.puts "╚═══════╧════════════╩════════╧════════════╩════════╧══════════════╧═══════════════════╝"
    end

    def fetch
      instruction=@memory.read_word @pc
      @old_pc=@pc
      @pc+=4
      instruction
    end

    def run filename
      puts "=> running"
      @running=true
      now_stepping=false
      while @running
        @instruction_count+=1
        instruction=fetch()
        txt=decode_execute(instruction)
        puts "##{@instruction_count} pc=0x#{@old_pc.to_s(16)} instr=0x#{instruction.to_s(16).rjust(8,'0')} #{txt}"
        log_counter_addr()
        print_state(instruction)
      end
    end

    def log_counter_addr
      @counter_pc_log.puts "#{@instruction_count.to_s.rjust(8)} @#{@old_pc.to_s(16).rjust(8,'0')} #{@opcode.to_s.upcase}"
    end

    def decode_execute instruction
      opcode=instruction & 0b1111111 # 7 bits LSB
      format=ISA::OPCODE_FORMAT_H[opcode]

      unless format
        raise "unknown format for opcode 0b#{opcode.to_s(2)}"
      end

      field={}
      ISA::FORMAT_ENCODING_H[format].each do |field_name,field_range|
        field[field_name]=bitfield(instruction,field_range)
      end
      # step
      case opcode=field[:opcode]
      when OPCODE_LUI
        imm =field[:imm_31_12] << 12
        rd= field[:rd]
        text = [:lui,imm]
        @reg[rd]=imm
      when OPCODE_AUIPC #===== U format =====
        imm =field[:imm_31_12] << 12
        imm=(imm-2**32) if imm[31]==1 #signed 32 bits 31...0
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
        text = [:jal,rd,imm]
      when OPCODE_JALR #===== I format =====
        @pc-=4 #fetch has prepared @pc+=4 already
        imm  = field[:imm_11_0]
        rs1  = field[:rs1]
        rd   = field[:rd]
        imm=(imm-2**12) if imm[11]==1
        @reg[rd]=@pc+4 #in bytes
        @pc=@reg[rs1]+imm
        text = [:jalr,rd,rs1,imm]
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
          text = [:bne,rs1,rs2,imm,sx(@reg[rs1]),sx(@reg[rs2])]
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
          text = [:bge,rs1,rs2,imm, sx(@reg[rs1]),sx(@reg[rs2])]
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
          @reg[rd]=sx(@memory[@reg[rs1]+imm] & 0xFF,8) #load byte, then sign extend to 32, from 8 bits
        when 0b001 #load half word
          addr=@reg[rs1]+imm
          half=@memory.read_half(addr) #load half
          @reg[rd]=sx(half,16) #then sign extend to 32, from 16 bits
          text=[:lh,rd,rs1,imm]
        when 0b010
          addr=@reg[rs1]+imm
          @reg[rd]=@memory.read_word(addr)
          text=[:lw,rd,rs1,imm]
        when 0b100
          addr=@reg[rs1]+imm
          @reg[rd]=@memory.read_byte(addr) & 0xFFFFFFF
          text=[:lbu,rd,rs1,imm]
        when 0b101
          addr=@reg[rs1]+imm
          @reg[rd]=ux(@memory.read_half(addr) & 0xFFFF,16) #load byte, then unsigned extend to 32, from 16 bits
          text=[:lhu,rd,rs1,imm]
        else
          raise "unknown funct3=0b#{funct3.to_s(2)} for opcode=0b0100011"
        end
        if @options[:verbose]
          @memory.show_mem(addr)
          show_regs(rd)
        end
      when OPCODE_STORE #==== s_type
        rs1=field[:rs1]
        rs2=field[:rs2]
        imm=(field[:imm_11_5] << 5) + field[:imm_4_0]
        imm-=2**12 if imm[11]==1
        case funct3=field[:funct3]
        when 0b000
          text = [:sb,rs1,rs2,imm]
          addr=@reg[rs1]+imm
          @memory.write_byte addr,@reg[rs2] & 0xFF #u8
        when 0b001
          text = [:sh,rs1,rs2,imm]
          addr=@reg[rs1]+imm
          data=@reg[rs2] & 0xFFFF
          @memory.write_half addr,data #u16  #BUG found. was write_word
        when 0b010
          addr=@reg[rs1]+imm
          @memory.write_word addr, @reg[rs2] # u32
          text = [:sw,rs2,rs1,imm]
        else
          raise "unknown funct3=0b#{funct3.to_s(2)} for opcode=0b0100011"
        end
        if @options[:verbose]
          @memory.show_mem(addr)
        end
      when OPCODE_INT_IMM #=== i_type
        #addi,slti,sltiu,xori,ori,andi,slli,srli
        rs1=field[:rs1]
        rd =field[:rd]
        imm=field[:imm_11_0]
        imm-=2**12 if imm[11]==1
        case funct3=field[:funct3]
        when 0b000
          op=  :addi
          op=  :nop if rd==0
          text = [op,rd,rs1,imm]
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
          @reg[rd]=ux(@reg[rs1]) << ux(imm) #signed imm ????
        when 0b101
          #srli,srai
          imm=field[:shamt]
          #imm-=2**5 if imm[4]==1
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
        show_regs(rd) if @options[:verbose]
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
          when 0b0000001
            text = [:mul,rd,rs1,rs2]
            @reg[rd]=(sx(@reg[rs1]) * sx(@reg[rs2])) & 0xFFFFFFFF
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
          case imm_11_5=field[:funct7]
          when 0b0000000
            text = [:xor,rd,rs1,rs2]
            @reg[rd]=ux(@reg[rs1]) ^ ux(@reg[rs2])
          when 0b0000001
            @reg[rd]=sx(@reg[rs1]) / sx(@reg[rs2])
            text = [:div,rd,rs1,rs2]
          else
            raise "unknown case"
          end
        when 0b101
          #srl,sra
          case funct7=field[:funct7]
          when 0b0000000
            text = [:srl,rd,rs1,rs2]
            @reg[rd]=ux(@reg[rs1]) >> (@reg[rs2] & 0b111111)
          when 0b0100000
            text = [:sra,rd,rs1,rs2]
            @reg[rd]=sx(@reg[rs1]) >> (@reg[rs2] & 0b111111)
          when 0b0000001
            text = [:divu,rd,rs1,rs2]
            @reg[rd]=ux(@reg[rs1]) / ux(@reg[rs2])
          else
            raise "unknown case for i_type with func3=0b101 func7=0x#{func7.to_s(16)}"
          end
        when 0b110
          case imm_11_5=field[:funct7]
          when 0b0000000
            text = [:or,rd,rs1,rs2]
            @reg[rd]=ux(@reg[rs1]) | ux(@reg[rs2])
          when 0b0000001
            text = [:rem,rd,rs1,rs2]
            @reg[rd]=@reg[rs1] % @reg[rs2] #???
          else
            raise "unknown case"
          end
        when 0b111
          case imm_11_5=field[:funct7]
          when 0b0000000
            text = [:and,rd,rs1,rs2]
            @reg[rd]=ux(@reg[rs1]) & ux(@reg[rs2])
          when 0b0000001
            text = [:remu,rd,rs1,rs2]
            @reg[rd]=ux(@reg[rs1]) % ux(@reg[rs2]) #???
          else
            raise "unknown case"
          end
        else
          raise "unknown funct3=0b#{funct3.to_s(2)} for opcode=0b0100011"
        end
        show_regs(rd) if @options[:verbose]
      when 0b0001111
        #fence, fence.i
      when OPCODE_E_CSR
        #csrrw,etc
        imm_11_0=csr=field[:imm_11_0]
        rs1=zimm=field[:rs1]
        rd =field[:rd]
        case funct3=field[:funct3]
        when 0b000
          #ecall,ebreak
          case imm_11_0
          when 0b000000000000
            @reg[1]=@pc #has been incremented during fetch
						@pc = 0x20 #- 4
            text=[:ecall]
          when 0b000000000001
            text=[:ebreak]
          else
             raise "unknown imm_11_0=0b#{imm_11_0.to_s(2)} for opcode=#{OPCODE_E_CSR}"
          end
        when 0b001
          text = [:csrrw,rd,rs1,csr]
        when 0b010
          text = [:csrrs,rd,rs1,csr]
        when 0b011
          text = [:csrrc,rd,rs1,csr]
        when 0b101
          text = [:csrrwi,rd,zimm,csr]
        when 0b110
          text = [:csrrsi,rd,zimm,csr]
        when 0b111
          text = [:csrrci,rd,zimm,csr]
        else
          raise "unknown funct3=0b#{funct3.to_s(2)} for opcode=0b0110011"
        end
      else
        raise "unknown opcode '0b#{opcode.to_s(2).rjust(7,'0')}' in #{field}"
      end
      @reg[0]=0 #force
      @opcode=text.first
      return  text.join(" ")
    end
  end
end
