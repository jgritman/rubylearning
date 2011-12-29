Dir.chdir(ARGV[0]) if ARGV[0]
files = Dir.glob('**/*')
files.each {|entry| puts entry }