require 'date'

def month_days(month, year=DateTime.now.year)
  first_day = Date.new(year, month, 1)
  ((first_day >> 1) - first_day).to_i
end

puts month_days(5) # 31 (May)

puts month_days(2, 2000) # 29 (February 2000)