# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.
points = {
  "A" => 1, "B" => 3, "C" => 3, "D" => 2, "E" => 1,
  "F" => 4, "G" => 2, "H" => 4, "I" => 1, "J" => 8,
  "K" => 5, "L" => 1, "M" => 3, "N" => 1, "O" => 1,
  "P" => 3, "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
  "U" => 1, "V" => 4, "W" => 4, "X" => 8, "Y" => 4,
  "Z" => 10, " " => 0
}
# Ask the user for a word
print "Enter a word: "
word = gets.chomp
# Calculate the score for the word
score = 0
word.chars.each do |letter|
  score += points[letter]
end
# Output the score
puts "Score for #{word}: #{score}"