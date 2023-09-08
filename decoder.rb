# Define a hash to map Morse code to characters
MORSE_CODE = {
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
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9'
}

# Method to decode a single Morse code character
def decode_char(morse_char)
  MORSE_CODE[morse_char]
end

# Method to decode an entire word in Morse code
def decode_word(morse_word)
  morse_chars = morse_word.split(' ')
  decoded_word = morse_chars.map { |char| decode_char(char) }.join('')
  decoded_word
end

# Method to decode the entire message in Morse code
def decode(message)
  morse_words = message.split('   ')
  decoded_message = morse_words.map { |word| decode_word(word) }.join(' ')
  decoded_message
end

# Test the decoding with the provided message
message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message = decode(message)
