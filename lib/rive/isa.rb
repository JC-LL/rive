module Rive
  module ISA

    OPCODE_LUI     = 0b0110111
    OPCODE_AUIPC   = 0b0010111
    OPCODE_JAL     = 0b1101111
    OPCODE_JALR    = 0b1100111
    OPCODE_BRANCH  = 0b1100011
    OPCODE_LOAD    = 0b0000011
    OPCODE_STORE   = 0b0100011
    OPCODE_INT_IMM = 0b0010011
    OPCODE_INT_REG = 0b0110011
    OPCODE_INT_MUL = 0b0110011

    FORMAT_ENCODING_H={
      #========= base instruction formats =========
      r_type:  {
        funct7: 31..25,
        rs2:    24..20,
        rs1:    19..15,
        funct3: 14..12,
        rd:     11..7,
        opcode:  6..0
      },
      i_type: {
        imm_11_0: 31..20,
        imm_11_5: 31..25,
        shamt:    24..20,
        rs1:      19..15,
        funct3:   14..12,
        rd:       11..7,
        opcode:    6..0
      },
      s_type: {
        imm_11_5: 31..25,
        rs2:      24..20,
        rs1:      19..15,
        funct3:   14..12,
        imm_4_0:  11..7,
        opcode:    6..0
      },
      b_type: {
        imm_12:    31..31,
        imm_10_5:  30..25,
        rs2:       24..20,
        rs1:       19..15,
        funct3:    14..12,
        imm_4_1:   11..8,
        imm_11:     7..7,
        opcode:     6..0
      },
      u_type: {
        imm_31_12: 31..12,
        rd:        11..7,
        opcode:     6..0
      },
      j_type: {
        imm_20:    31..31,
        imm_10_1:  30..21,
        imm_11:    20..20,
        imm_19_12: 19..12,
        rd:         11..7,
        opcode:      6..0
      },

    }

    OPCODE_FORMAT_H={
      0b0110011 => :r_type,
      0b0010011 => :i_type,
      0b0000011 => :i_type,
      0b0100011 => :s_type,
      0b1100011 => :b_type,
      0b1101111 => :j_type,
      0b1100111 => :i_type,
      0b0110111 => :u_type,
      0b0010111 => :u_type,
      0b1110011 => :i_type,
    }

    INSTRUCTION_ENCODING_H={
      # ==================================================== RV32 I ==================================================================
      :lui    => {:format => :u_type, :opcode => 0b0110111, :funct3 => 0x00, :funct7 =>  nil, :descr => "rd = imm << 12"             },
      :auipc  => {:format => :u_type, :opcode => 0b0010111, :funct3 => nil , :funct7 =>  nil, :descr => "rd = PC+(imm << 12 )"       },
      #-----  --------------------------------------------------------------------------------
      :jal    => {:format => :j_type, :opcode => 0b1101111, :funct3 => nil , :funct7 => nil , :descr => "rd = PC+4;PC+=imm"          },
      :jalr   => {:format => :i_type, :opcode => 0b1100111, :funct3 => 0x00, :funct7 => nil , :descr => "rd = PC+4;PC=rs1+imm"       },
      #-----  --------------------------------------------------------------------------------
      :beq    => {:format => :b_type, :opcode => 0b1100011, :funct3 => 0x00, :funct7 => 0x00, :descr => "if(rs1==rs2) PC+=imm"       },
      :bne    => {:format => :b_type, :opcode => 0b1100011, :funct3 => 0x01, :funct7 => 0x00, :descr => "if(rs1!=rs2) PC+=imm"       },
      :blt    => {:format => :b_type, :opcode => 0b1100011, :funct3 => 0x04, :funct7 => 0x00, :descr => "if(rs1 <rs2) PC+=imm"       },
      :bge    => {:format => :b_type, :opcode => 0b1100011, :funct3 => 0x05, :funct7 => 0x00, :descr => "if(rs1>=rs2) PC+=imm"       },
      :bntu   => {:format => :b_type, :opcode => 0b1100011, :funct3 => 0x06, :funct7 => 0x00, :descr => "if(rs1< rs2) PC+=imm"       },
      :bgeu   => {:format => :b_type, :opcode => 0b1100011, :funct3 => 0x07, :funct7 => 0x00, :descr => "if(rs1>=rs2) PC+=imm"       },
      #-----  --------------------------------------------------------------------------------
      :lb     => {:format => :i_type, :opcode => 0b0000011, :funct3 => 0x00, :funct7 => nil , :descr => "rd = M[rs1+imm][0:7]"       },
      :lh     => {:format => :i_type, :opcode => 0b0000011, :funct3 => 0x01, :funct7 => nil , :descr => "rd = M[rs1+imm][0:7]"       },# ???
      :lw     => {:format => :i_type, :opcode => 0b0000011, :funct3 => 0x02, :funct7 => nil , :descr => "rd = M[rs1+imm][0:31]"      },
      :lbu    => {:format => :i_type, :opcode => 0b0000011, :funct3 => 0x04, :funct7 => nil , :descr => "rd = M[rs1+imm][0:7]"       },
      :lhu    => {:format => :i_type, :opcode => 0b0000011, :funct3 => 0x05, :funct7 => nil , :descr => "rd = M[rs1+imm][0:7]"       }, #???
      #----------------------------------------------------------------------------------------
      :sb     => {:format => :s_type, :opcode => 0b0100011, :funct3 => 0x00, :funct7 => nil , :descr => "M[rs1+imm][0:7]=rs2[0:7]"   },
      :sh     => {:format => :s_type, :opcode => 0b0100011, :funct3 => 0x01, :funct7 => nil , :descr => "M[]"   },
      :sw     => {:format => :s_type, :opcode => 0b0100011, :funct3 => 0x02, :funct7 => nil , :descr => "M[rs1+imm][0:31]=rs2[0:31]"   },
      #-----  --------------------------------------------------------------------------------
      :addi   => {:format => :i_type, :opcode => 0b0010011, :funct3 => 0x00, :funct7 => 0x00, :descr => "rd = rs1 + imm"             },
      :slti   => {:format => :i_type, :opcode => 0b0010011, :funct3 => 0x02, :funct7 => 0x00, :descr => "rd =(rs1 < imm)?1:0"        },
      :sltiu  => {:format => :i_type, :opcode => 0b0010011, :funct3 => 0x03, :funct7 => 0x00, :descr => "rd =(rs1 < imm)?1:0"        },
      :xori   => {:format => :i_type, :opcode => 0b0010011, :funct3 => 0x04, :funct7 => 0x00, :descr => "rd = rs1 ^ imm"             },
      :ori    => {:format => :i_type, :opcode => 0b0010011, :funct3 => 0x06, :funct7 => 0x00, :descr => "rd = rs1 | imm"             },
      :andi   => {:format => :i_type, :opcode => 0b0010011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & imm"             },
      #------ --------------------------------------------------------------------------------
      :slli   => {:format => :i_type, :opcode => 0b0010011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & imm"             },
      :srli   => {:format => :i_type, :opcode => 0b0010011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & imm"             },
      :srai   => {:format => :i_type, :opcode => 0b0010011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & imm"             },
      #--------------------------------------------------------------------------------------
      :add    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x00, :funct7 => 0x00, :descr => "rd = rs1 + rs2"             },
      :sub    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x00, :funct7 => 0x20, :descr => "rd = rs1 - rs2"             },
      :sll    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x00, :funct7 => 0x20, :descr => "rd = rs1 << rs2[4:0]"       },
      :slt    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x02, :funct7 => nil , :descr => "rd = (rs1 < rs2)? 1:0"      },
      :sltu   => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x03, :funct7 => nil , :descr => "rd = (rs1 < rs2)? 1:0"      },
      :xor    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x04, :funct7 => 0x00, :descr => "rd = rs1 ^ rs2"             },
      :srl    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x06, :funct7 => 0x00, :descr => "rd = rs1 >> rs2[4:0]"       },
      :sra    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x06, :funct7 => 0x20, :descr => "rd = rs1 >> rs2[4:0]"       },
      :or     => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x06, :funct7 => 0x00, :descr => "rd = rs1 | rs2"             },
      :and    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & rs2"             },
      #------ --------------------------------------------------------------------------------
      :fence  => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "?"                          },
      :fencei => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "?"                          },
      #------ --------------------------------------------------------------------------------
      :ecall  => {:format => :r_type, :opcode => 0b1110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "?"                          },
      :ebreak => {:format => :r_type, :opcode => 0b1110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "?"                          },
      #------ --------------------------------------------------------------------------------
      :csrrw  => {:format => :i_type, :opcode => 0b1110011, :funct3 => 0x07, :funct7 => 0x00, :descr => ""                           },
      :csrrs  => {:format => :i_type, :opcode => 0b1110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "?"                          },
      :csrrc  => {:format => :i_type, :opcode => 0b1110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "?"                          },
      :csrrwi => {:format => :i_type, :opcode => 0b1110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "?"                          },
      :csrrsi => {:format => :i_type, :opcode => 0b1110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "?"                          },
      :csrrci => {:format => :i_type, :opcode => 0b1110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "?"                          },
      # ==================================================== RV32 M ===================================================================
      :mul    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & rs2"             },
      :mulh   => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & rs2"             },
      :mulhsu => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & rs2"             },
      :mulhu  => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & rs2"             },
      :div    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & rs2"             },
      :divu   => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & rs2"             },
      :rem    => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & rs2"             },
      :remu   => {:format => :r_type, :opcode => 0b0110011, :funct3 => 0x07, :funct7 => 0x00, :descr => "rd = rs1 & rs2"             },

    }

  end
end
