def CaesarCipher(s, shift)
    i = 0
    letters = {}
    "a".upto("z") do |letter|
        letters[i] = letter
        i += 1
    end
    i = 0
    num = {}
    0.upto(9) do |n|
        num[i] = n.to_s
        i += 1
    end

    result = ""
    s.split("").each do |l|
        if (letters.has_value?(l.downcase)) ==true
            if (letters.has_value?(l))
                result = result + letters[shifting(letters.key(l.downcase), shift, "letter")]
            else
                result = result + letters[shifting(letters.key(l.downcase), shift, "letter")].upcase
            end  
        elsif (num.has_value?(l)) ==true
            result = result + shifting(num.key(l), shift, "number").to_s
        else
            result = result + l
        end
    end
 
    puts result
end

def shifting(i, shift, letterOrNumber)
    maxInt = 0
    if letterOrNumber == "letter"
        maxInt = 26
    else
        maxInt = 10
    end

    currentInt = i + shift
    if currentInt > maxInt -1
        currentInt -= maxInt
    end
    return currentInt
end