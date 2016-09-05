

=begin
total = [1,4,10].reduce{|sum,x sum +x|}
=end

=begin
total = [1,4,10].reduce do |sum, x|
    sum + x
end
p sum
=end