
class Gameboard

  attr_accessor :width, :height, :cells

  #
  # Generate a gameboard
  #
  # @example a board width of 3 and height of 6
  #
  #  Gameboard.new :width => 3, :height => 6
  #
  def initialize(params = {})

    params.each_pair do |property,value|
      send("#{property}=",value)
    end

    computer_units = Creator.generate_computer
    computer_units = Creator.generate_computer

    middleground = []
    6.times {|ground| middleground << nil }

    player_units = Creator.generate_player

    battlefield = computer_units + middleground + player_units

    index = 0

    width.times do |x|
      height.times do |y|
        @cells << Cell.new(x,y,battlefield[index])
        index += 1
      end
    end

  end





end
