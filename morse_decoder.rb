@dictionary = {
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
}

# get the individual letter
def get_letter(letter)
  @dictionary[letter]
end

# get the word

def decode_word(word)
  @letters = word.split
  @current_word = ''
  @letters.each do |letter|
    get_letter(letter)
    @current_word += get_letter(letter)
  end
  print @current_word.to_s
end

# get the sentence
def decode_sentence(sentence)
  @words = sentence.split('  ')
  @words.each do |word|
    decode_word(word)
    print ' '
  end
end

decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
