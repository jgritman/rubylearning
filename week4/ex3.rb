filename = ARGV[0]
lines = IO.readlines(filename)
File.open(filename, 'w') {|f|
  lines.each {|line| f.puts(line.gsub('word', 'inserted word'))}
}