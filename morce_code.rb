MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
  '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
}.freeze

# Function to decode a Morse code character
def decode_morse_char(morse_char)
  MORSE_CODE[morse_char]
end

# Function to decode an entire word in Morse code
def decode_morse_word(morse_word)
  morse_word.split.map { |char| decode_morse_char(char) }.join
end

# Function to decode the entire message in Morse code
def decode_morse_message(morse_message)
  morse_message.split('   ').map { |word| decode_morse_word(word) }.join(' ')
end

morse_input = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_morse_message(morse_input)
puts decoded_message
