module Rive
  module Utils

    def step
      puts "step : hit enter !"
      $stdin.gets
    end

    def bitfield bin,range
      msb,lsb=range.begin,range.end
      val=(lsb..msb).map{|i| 2**i}.sum
      (bin & val) >> lsb
    end

    def sx bin,size_init=32
      if bin[size_init-1]==1
        return bin-2**32
      else
        return bin
      end
    end

    def ux bin,size_init=32
      bin
    end

    def show_regs reg=nil
      @reg.each_with_index do |value,id|
        if reg
          if reg==id
            puts "x#{id}".rjust(3)+":#{value.to_s(16).rjust(8,'0')}"
            return
          end
        else
          puts "x#{id}".rjust(3)+":#{value.to_s(16).rjust(8,'0')}"
        end
      end
    end

    def showmem addr=nil
      if addr
        value=@memory[addr]
        raise "nil value at 0x#{addr.to_s(16)}" unless value
        puts "showmem 0x#{addr.to_s(16)} : #{value}"
        puts "0x#{addr.to_s(16).rjust(8,'0')} 0x#{value.to_s(16).rjust(8,'0')}"
      else
        @memory.each do |addr,value|
          puts "0x#{addr.to_s(16).rjust(8,'0')} 0x#{value.to_s(16).rjust(8,'0')}"
        end
      end
    end
  end
end
