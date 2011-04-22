
module Creator
  extend self

  def generate_computer
    [ [ 'General', 1 ], [ 'Captain', 3 ], [ 'Sergeant', 5 ], [ 'Private', 7 ], [ 'Flag', 0 ], [ 'Bomb', -1 ] ].map do |data|
      Unit.new :name => data.first, :rank => data.last, :owner => :computer
    end
  end

  def generate_player
    [ [ 'General', 1 ], [ 'Captain', 3 ], [ 'Sergeant', 5 ], [ 'Private', 7 ], [ 'Flag', 0 ], [ 'Bomb', -1 ] ].map do |data|
      Unit.new :name => data.first, :rank => data.last, :owner => :player
    end
  end

end