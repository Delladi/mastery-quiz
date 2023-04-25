# Write a game where the player swims down a river infested with
# crocodiles.  The game should:
# * Use the `river` variable that defines the river (see code below).
#   * `-`: clear water.
#   * `C`: crocodile.
#   * The first five characters represent the first part of the river.
#     The second five characters represent the second part of the
#     river.  And so on.
# * Define the player as one character wide.
# * Start the player at the central position of the first part of the
#   river.
#   * e.g. `C-P--`.
# * Each turn:
#   * Check to see if the player is in the same position as a
#     crocodile.  If they are, `puts` `You were eaten.' and stop the
#     program.
#   * `puts` the whole river.  Include a `P` where the player is.
#   * Ask the player if they want to go to left, right or neither.
#     The player enters `left`, `right` or `neither`.
#   * Make the player float down the river by one river part (one line
#     of digits).  Move them to the left, the right, or keep them
#     where they are.
# Print `You survived!` if the player makes it past all parts of the
# river without hitting a crocodile.
#
# * Note: To stop the game when the user is eaten or survives the
#   whole river, don't use `exit` to quit the program because this
#   will break the automated tests.  To exit a while loop early, use
#   the `break` keyword.
#
# * Note: You can assume the player will never move outside the
#   boundary of the river when they choose left and right.  You can
#   also assume the player will always enter either `left`, `right` or
#   `neither`.
#
# * Example output:
#   ```
#   --P--
#   --C--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   left
#   -----
#   -PC--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   right
#   -----
#   --C--
#   CCPCC
#   CC-CC
#   Type left, right or neither
#   neither
#   -----
#   --C--
#   CC-CC
#   CCPCC
#   Type left, right or neither
#   neither
#   You survived!
#   ```

river = "-----,--C--,CC-CC,CC-CC"
player_pos = [1, 3] # row, column

# Split the river into parts
river_parts = river.split(',')

# Game loop
while true
  # Check if the player is eaten
  if river_parts[player_pos[0]][player_pos[1]] == 'C'
    puts "You were eaten."
    break
  end
  
  # Print the river with the player
  river_parts[player_pos[0]][player_pos[1]] = 'P'
  puts river_parts.join("\n")
  
  # Ask the player for their move
  print "Type left, right or neither\n"
  move = gets.chomp
  
  # Move the player down the river
  river_parts[player_pos[0]][player_pos[1]] = '-' # remove the player from the current position
  case move
  when 'left'
    player_pos[1] -= 1
  when 'right'
    player_pos[1] += 1
  end
  
  # Check if the player survived
  if player_pos[0] == river_parts.length - 1
    puts "You survived!"
    break
  end
end