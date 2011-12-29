require 'logger'  
$LOG = Logger.new(STDOUT)
FILENAME = "text.txt"
begin
  lines = IO.readlines(FILENAME)
rescue
  $LOG.error "Error reading file"
  exit
end
line_count = lines.size
full_text = lines.join
char_count = full_text.size
char_count_no_space = full_text.count "^ " "^\n"
word_count = full_text.split().size
sentence_count = full_text.split(/[\.\?\!]/).size
paragraph_count = full_text.split("\r\n\r\n").size
words_per_sentence = word_count.to_f/sentence_count
sentence_per_paragraph = sentence_count.to_f/paragraph_count

$LOG.info "Characters: #{char_count}"
$LOG.info "Characters without whitespace: #{char_count_no_space}"
$LOG.info "Lines: #{line_count}"
$LOG.info "Words: #{word_count}"
$LOG.info "Sentences: #{sentence_count}"
$LOG.info "Paragraphs: #{paragraph_count}"
$LOG.info format "Words per sentence: %.2f", words_per_sentence
$LOG.info format "Sentences per paragraph: %.2f", sentence_per_paragraph