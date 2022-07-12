ALPHABET_MORSE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def char_decode(string)
  ALPHABET_MORSE[string]
end

def word_decode(word)
  word.split.map { |char| char_decode(char) }.join
end

def message_decode(message)
  message.split('   ').map { |word| word_decode(word) }.join(' ')
end

puts message_decode '.... . -.--   .--- ..- -.. .'
puts message_decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
