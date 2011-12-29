MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY
DAYS_IN_REGULAR_YEAR = 365
DAYS_IN_LEAP_YEAR = 366

def leap_year?(year)
  year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end

def minutes_in_year(year)
  (leap_year?(year) ? DAYS_IN_REGULAR_YEAR : DAYS_IN_LEAP_YEAR) * MINUTES_IN_DAY
end

def print_minutes_in_year(year)
  puts "#{year}: #{minutes_in_year(year)}"
end

print_minutes_in_year(1900)
print_minutes_in_year(2005)
print_minutes_in_year(2000)
print_minutes_in_year(2004)