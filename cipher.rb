def caesar_cipher(string_to_encrypt, shift_factor)
  string_to_encrypt.gsub!(/[^\s!]/) do |s|
    shift_char(s, shift_factor)
  end
  return string_to_encrypt
end

def shift_char(s, shift_factor)
  shift_factor.to_i.times { s.succ! }
  s.length > 1 ? s[1] : s[0]  # succ prepends a character if there is a wrap
end

puts "Enter string to encrypt:"
string_to_encrypt = gets.chomp
puts "Enter shift factor:"
shift_factor = gets.chomp
puts caesar_cipher(string_to_encrypt, shift_factor)