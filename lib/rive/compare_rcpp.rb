def reformating_line_cpp log
  result=[]
  log.each do |line|
    mdata=line.match /(\s+\d+) (@[0-9a-f]+) ([A-Z0-9]+)/
    if mdata
      count,addr,opcode=mdata.captures[0..2]
      result << "#{count} #{addr} #{opcode}"
    end
  end
  result
end

raise "need two files !" unless ARGV.size==2
r_log_filename=ARGV.first
c_log_filename=ARGV.last
puts "comparing counter @ opcode for :"
puts "- #{r_log_filename}"
puts "- #{c_log_filename}"

log_r=IO.readlines(r_log_filename).map(&:chomp)
log_c=IO.readlines(c_log_filename).map(&:chomp)
log_c=reformating_line_cpp(log_c)

puts "number of lines".center(80,'=')
puts "- rive     : #{log_r.size}"
puts "- piticore : #{log_c.size}"

puts "differences".center(80,"=")
for i in 0..log_r.size-1
  r_line=log_r[i]
  c_line=log_c[i]
  if r_line!=c_line
    puts "line #{i+1} : "
    puts r_line
    puts c_line
  end
end
