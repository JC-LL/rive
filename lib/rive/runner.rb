require "optparse"

require_relative "iss"

module Rive

  class Runner

    def self.run *arguments
      new.run(arguments)
    end

    def run arguments
      args = parse_options(arguments)
      iss=Iss.new
      iss.options = args
      begin
        filename=args[:file]
        if iss.options[:disassemble]
          iss.load(filename)
          iss.disassemble
        elsif iss.options[:run]
          iss.load(filename)
          iss.run(filename)
        else
          raise "need a rive file : rive [options] <file>"
        end
      rescue Exception => e
        puts e unless iss.options[:mute]
        raise
        return false
      end
    end

    def header
      puts "rive (#{VERSION}) / Ruby RISCV simulator - (c) JC Le Lann 2020"
    end

    private
    def parse_options(arguments)
      parser = OptionParser.new
      no_arguments=arguments.empty?
      options = {}
      parser.on("-h", "--help", "Show help message") do
        puts parser
        exit(true)
      end

      parser.on("-p", "--parse", "parse only") do
        options[:parse_only]=true
      end

      parser.on("-d", "dissassemble") do
        options[:disassemble] = true
      end

      parser.on("-r", "run") do
        options[:run] = true
      end

      parser.on("--start ADDR", "start address") do |addr|
        options[:start_address] = addr
      end

      parser.on("--vv", "verbose") do
        options[:verbose] = true
      end

      parser.on("--mute","mute") do
        options[:mute]=true
      end

      parser.on("-v", "--version", "Show version number") do
        puts VERSION
        exit(true)
      end

      parser.parse!(arguments)
      options[:file]=arguments.shift #the remaining file

      header unless options[:mute]

      if no_arguments
        puts parser
      end

      options
    end
  end
end
