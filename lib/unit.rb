module Stratego

  class Unit

    #
    # The rank is the value of the unit. The lower the number
    # the higher the value
    #
    # The full name of the unit
    #
    # The owner of the unit is the player or the computer.
    #
    attr_accessor :rank, :name, :owner

    def initialize(params = {})

      # For all the name-value pairs specified
      # in the hash call the methods to set the values

      params.each_pair do |property,value|
        send("#{property}=",value)
      end

    end

    #
    # This the view of the unit when it appears on the
    # gameboard. Computer pieces are shown as unknown
    #
    # @example General with Rank 1 (for a player)
    #
    #  general.view # => g(1)
    #
    def view
      owner == :player ? "#{name[0]}(#{rank})" : "X(#)"
    end
  end

end