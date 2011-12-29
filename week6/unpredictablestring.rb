class UnpredictableString < String
  def scramble
    self.split('').sort_by{rand}.join
  end
end

ups = UnpredictableString.new "It was a dark and stormy night."
puts ups.scramble