def caesar(input, key)
    i = input.split('')
    i.each do |item|
        cesare = item.ord + key 
        puts "#{cesare.chr}"
    end
end

caesar("p| uhdo qdph lv grqdog gxfn", -3)