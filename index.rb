
def decode_char(string)
  morse_code = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z",
    "-----" => "0",
    ".----" => "1",
    "..---" => "2",
    "...--" => "3",
    "....-" => "4",
    "....." => "5",
    "-...." => "6",
    "--..." => "7",
    "---.." => "8",
    "----." => "9",
    ".-.-.-" => ".",
    "--..--" => ",",
    "..--.." => "?",
    "---..." => ":",
    "-.-.-." => ";",
    "-...-" => "-",
    ".-..-." => "'",
    ".--.-." => "@",
    "..--.-" => "_",
    "...---..." => "SOS",
    "-..-." => "&",
    ".-..." => "\"",
    "-.-.-" => "=",
    ".-.-." => "+",
    "-....-" => "-",
    "-...-" => "=",
    "..--.-" => "_",
    ".--.-." => "@",
    ".-.-.-" => "."
  }

  if morse_code.has_key?(string)
    return morse_code[string]
  else
    return " "
  end
end

def decode_word(string)
  array = string.split(" ")
  decoded_word = ""
  array.each do |char|
    decoded_word += decode_char(char)
  end
  return decoded_word
end

def decode_message(string)
  array = string.split("   ")
  decoded_message = ""
  array.each do |word|
    decoded_message += decode_word(word)
  end
  return decoded_message
end

