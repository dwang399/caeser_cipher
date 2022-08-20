def caeser_cipher(string, number)
    # Turn the string into an array of ASCII Values
    string_array = string.bytes
    # Keep any shift into the range of a-z or A-Z
    shift = number % 26
    # Iterate through each value in the array
    string_array.map! do |num|
      #Only shift if the letter was a-z or A-Z
      if num.between?(65, 90)
        #Condition for ensuring Wrap from Z to A
        if (num + shift > 90) 
          num = (num + shift - 26)
        else
          num = num + shift
        end
      elsif num.between?(97, 122)
        #Condition for ensuring Wrap from z to a
        if (num + shift > 122)
          num = (num + shift - 26)
        else
          num = num + shift
        end
      else 
        num = num
      end
    end
    #Turn the ASCII Values back to letters
    string_array.map! { |num| num.chr }
    #Join together the array into a string
    cipher = string_array.join("")
  end