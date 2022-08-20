def caeser_cipher(string, number)
    string_array = string.bytes
    string_array.map! { |num| num.chr }
    puts string_array
  end
  