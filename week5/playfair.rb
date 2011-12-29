class PlayFairCipher
  def initialize(key)
    @key = key
    @square = create_square
    @hash = cipher_hash
    @rev_hash = @hash.invert
  end
  
  attr_reader :square 
  
  def encrypt(message)
    prepare(message).collect{ |digraph| @hash[digraph]}.join
  end
  
  def decrypt(message)
    message.scan(/../).collect{|d| @rev_hash[d]}.join
  end
  
  private
  
  def create_square
    square_chars = @key.upcase.scan(/\w/) + ('A'..'Z').to_a
    square_chars = square_chars.collect {|char| char == 'J' ? 'I' : char}
    square_chars.uniq!
    0.step(20,5).collect {|i| square_chars.slice(i,5)}
  end
  
  def position_of_letter(letter)
    row = @square.find{|sub|sub.index(letter)}
    [row.index(letter),@square.index(row)]
  end
  
  def prepare(message)
    prepared_digraphs = []
    all_chars = message.upcase.gsub('J','I').scan(/\w/)
    next_char = lambda {!all_chars.empty? ? all_chars.shift : 'X'}
    until all_chars.empty?
      char1, char2 = all_chars.shift, next_char.call
      
      # handle matches
      dup_flag = false
      while char1 == char2
        prepared_digraphs << char1 + (dup_flag = !dup_flag ? 'X' : 'Z')
        char1, char2 = char2, next_char.call 
      end

      prepared_digraphs << char1 + char2
    end
    prepared_digraphs
  end 
  
  def encrypt_digraph(first_char, second_char)
    next_pos = lambda{|i| (i += 1) <= 4 ? i : 0}
    x1, y1= position_of_letter(first_char)
    x2, y2 = position_of_letter(second_char)
    if x1 == x2 #same column
     return @square[next_pos.call(y1)][x1] + @square[next_pos.call(y2)][x2]
    elsif y1 == y2 # same row
     return @square[y1][next_pos.call(x1)] + @square[y2][next_pos.call(x2)]
    else # square
     return @square[y1][x2] + @square[y2][x1]
    end
  end
  
  def cipher_hash
    cipher_hash = {}
    valid_chars = ('A'..'Z').to_a - ['J']
    valid_chars.permutation(2) do |d|
      cipher_hash["#{d[0]}#{d[1]}"] = encrypt_digraph(d[0],d[1])
    end
    cipher_hash
  end
end


key = 'Playfair example'
pc = PlayFairCipher.new key

require 'pp'
pp pc.square
encrypt =  pc.encrypt('Hide the gold in the tree stump')

puts encrypt
puts pc.decrypt(encrypt)
