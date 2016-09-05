def caesar(input, key)
    divide = input.split("")
    letter = 0
    for letter in divide
        if letter ==" " 
            print " "
    else
        number = letter.ord + key
        print number.chr
        end
    end
    print "\n"
end

caesar("p| uhdo qdph lv grqdog gxfn", -3)