old_inventory = ARGV[0]
new_inventory = ARGV[1]

old_contents = IO.readlines(old_inventory)
IO.readlines(new_inventory).each do |filename|
  puts filename if !old_contents.index(filename)
end