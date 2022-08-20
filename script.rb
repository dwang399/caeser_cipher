def caeser_cipher(string, number)
    string_array = string.bytes
    shift = number % 26
    string_array.map! do |num|
      if (num.between?(65, 90) || num.between?(97,122))
        num = num + shift
      else 
        num = num
      end
    end
    string_array.map! { |num| num.chr }
    puts string_array
end
  