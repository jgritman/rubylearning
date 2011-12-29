filename1 = ARGV[0]
filename2 = ARGV[1]

file1Contents = IO.read(filename1)
file2Contents = IO.read(filename2)

File.new(filename2, 'w').write(file1Contents)
File.new(filename1, 'w').write(file2Contents)