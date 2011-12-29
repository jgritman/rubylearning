SECONDS_IN_MINUTE = 60
MINUTES_IN_HOUR = 60
SECONDS_IN_HOUR = SECONDS_IN_MINUTE * MINUTES_IN_HOUR
HOURS_IN_DAY = 24
SECONDS_IN_DAY = HOURS_IN_DAY * SECONDS_IN_HOUR

def last_modified(file)
  modified_days = (Time.new - File.mtime(file))/SECONDS_IN_DAY
  puts "File was last modified #{modified_days} days ago"  
end

last_modified('dump')
