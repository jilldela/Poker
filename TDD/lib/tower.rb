class Tower

  attr_accessor :towers

  def initialize
    @towers = Array.new(3) { Array.new }
    @towers[0] = [3, 2, 1]
  end

  def move(tower1, tower2)
    raise ArgumentError if @towers[tower1].empty?
    unless @towers[tower2].empty?
      raise ArgumentError if @towers[tower1].last > @towers[tower2].last
    end
    @towers[tower2] << @towers[tower1].pop
  end

  def won?
    @towers[0].empty? && (@towers[1] == [3,2,1] || @towers[2] == [3,2,1])
  end

  def play
    until won?
      puts "Which tower do you want to move from?"

      tower1 = gets.chomp.to_i

      puts "Which tower do you want to move to?"
      tower2 = gets.chomp.to_i

      move(tower1, tower2)
    end
  end

end
