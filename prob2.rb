class Game
  def initialize
    @total_points = 0
    @rooms = {
      1 => { name: "Room 1", points: 5 },
      2 => { name: "Room 2", points: 10 },
      3 => { name: "Room 3", points: 15 }
    }
  end

  def start
    puts "Welcome to the Adventure Game!"
    play
  end

  private

  def play
    loop do
      status
      choice = get_choice

      if choice == 'exit'
      end_game
        break
      end
      enter_room(choice.to_i)
    end
  end

  def status
    puts "You have #{@total_points} points."
    puts "Choose a room (1-3) to enter or 'exit' to end the game:"
  end

  def get_choice
    gets.chomp.downcase
  end

  def enter_room(room_number)
    room = @rooms[room_number]
    if room
      puts "You entered #{room[:name]} and earned #{room[:points]} points."
      @total_points += room[:points]
    else
      puts "Invalid choice"
    end
  end

  def end_game
    puts "Game over! You collected a total of #{@total_points} points."
  end
end

game = Game.new
game.start
