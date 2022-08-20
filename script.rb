def caeser_cipher(string, number)
    # Turn the string into an array of ASCII Values
    string_array = string.bytes
    # Keep any shift into the range of a-z or A-Z
    shift = number % 26
    # Iterate through each value in the array
    string_array.map! do |num|
      if num.between?(65, 90)
        if (num + shift > 90) 
          num = (num + shift - 26)
        else
          num = num + shift
        end
      elsif num.between?(97, 122)
        if (num + shift > 122)
          num = (num + shift - 26)
        else
          num = num + shift
        end
      else 
        num = num
      end
    end
    string_array.map! { |num| num.chr }
    cipher = string_array.join("")
  end