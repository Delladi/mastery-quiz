# Write a program that adds together all the integers from `1` to
# `250` (inclusive) and `puts`es the total.
sum = 0
(1..250).each do |number|
  sum += number
end
puts sum