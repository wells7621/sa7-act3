puts "Welcome to the Adventure Game!"
puts "You have 0 points."

#game rooms and points
$points = 0
$room_one = 5
$room_two = 10
$room_three = 15

puts "Choose a room (1-3) to enter or 'exit' to end the game: "
input = gets.chomp
while input != 'exit'
    #convert input to int
    num = input.to_i
    if num == 1
        $points += $room_one
        puts "You entered Room 1 and earned #{$points} points."
    elsif num == 2
        $points += $room_two
        puts "You entered Room 2 and earned #{$points} points."
    elsif num == 3
        $points += $room_three
        puts "You entered Room 2 and earned #{$points} points."
    end

    puts "Choose a room (1-3) to enter or 'exit' to end the game: "
    input = gets.chomp
end

puts "Game over! You collected a total of #{$points} points."