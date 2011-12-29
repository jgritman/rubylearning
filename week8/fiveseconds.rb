def run_every_five_seconds
  while (true)
    yield 
    sleep 5
  end
end

run_every_five_seconds {puts Time.new}