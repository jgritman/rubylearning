TAG_POS = -128
TAG_LENGTHS = {:song => 30, :artist => 30, :album => 30}

filename = ARGV[0]
file = File.open(filename) if File::exists?( filename )
size = File.size(filename)


if (size > -TAG_POS)
  file.seek(TAG_POS,IO::SEEK_END)
  tag_field = file.readpartial(3)
  tags = {}

  if(tag_field == 'TAG')
    song = file.readpartial(TAG_LENGTHS[:song])
    puts "Song: #{song}"
    artist = file.readpartial(TAG_LENGTHS[:artist])
    puts "Artist: #{artist}"
    album = file.readpartial(TAG_LENGTHS[:album])
    puts "Album: #{album}"
  end
end