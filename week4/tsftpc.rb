require 'getoptlong'

# Call using "ruby tsftpc.rb -hftp.ibilio.org -n21 -uanonymous -ps@s.com"
# The parameters can be in any order
unless ARGV.length == 4
  puts "Usage: ruby tsftpc.rb -hftp_site_url -nport_no -uuser_name -ppassword"
  exit
end

host_name = port_no = user_name = password = ''
opts = GetoptLong.new(
  ["--hostname", "-h", GetoptLong::REQUIRED_ARGUMENT],
  ["--port", "-n", GetoptLong::REQUIRED_ARGUMENT],
  ["--username", "-u", GetoptLong::REQUIRED_ARGUMENT],
  ["--pass", "-p", GetoptLong::REQUIRED_ARGUMENT]
)
# process the parsed optins
opts.each do |opt, arg|
  case opt
  when '--hostname'
    host_name = arg
  when '--port'
    port_no = arg
  when '--username'
    user_name = arg
  when '--pass'
    password = arg
  end
end
puts "Hostanme: #{host_name}"
puts "Port: #{port_no}"
puts "Userane: #{user_name}"
puts "Password #{password}"