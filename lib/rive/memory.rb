module Rive

  class Memory

    def initialize size_in_bytes
      @content=Array.new(size_in_bytes){0}
    end

    def size
      @content.size
    end

    def init_from_file bin_filename
      bytes=IO.binread(bin_filename).unpack("C*")
      init_with bytes
    end

    def init_with ary
      ary.each_with_index{|byte,addr| @content[addr]=byte}
    end

    def write_byte addr,data
      @content[addr]=data
    end

    def write_32_bits addr,data
      0.upto(3) do |i|
        byte=data & 0xff
        write_byte addr+i,byte
        data=data >> 8
      end
    end

    def read_bytes addr,nb_bytes=4
      bytes=@content[addr..(addr+nb_bytes-1)]
    end

    def read_32_bits addr
      puts "read at 0x%08x" % addr
      bytes=read_bytes(addr,4)
      data=0
      data+=bytes.shift
      data+=bytes.shift << 8  #indianness
      data+=bytes.shift << 16
      data+=bytes.shift << 24
      data
    end

    def show_mem addr,nb_bytes=32
      puts "mem[0x0%8x]" % addr
    end
  end
end

p Rive::Memory.new(0x0100000).write_32_bits 0x0, 0xDEADBEEF
