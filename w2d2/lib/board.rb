class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    @cups.each_with_index do |each, idx|
      @cups[idx] += [:stone, :stone, :stone, :stone] if idx != 6 && idx != 13
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    return true if (1..6).to_a.include? start_pos
    return true if (7..12).to_a.include? start_pos
    raise "Invalid starting cup"
  end

  def make_move(start_pos, current_player_name)
    idx = start_pos
    stones = @cups[start_pos]
    @cups[start_pos] = []
    until stones.empty?
      idx += 1
      idx = 0 if idx > 13
      if idx == 6
        @cups[idx] << stones.pop if current_player_name == @name1
      elsif idx == 13
        @cups[idx] << stones.pop if current_player_name == @name2
      else
        @cups[idx] << stones.pop
      end
    end

    render
    next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    return :prompt if ending_cup_idx == 6
    return :prompt if ending_cup_idx == 13
    return :switch if @cups[ending_cup_idx].count == 1
    return ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..6].all? {|c| c.empty?}
    @cups[7..12].all? {|c| c.empty?}
  end

  def winner
    p1 = @cups[6].length
    p2 = @cups[13].length
    return :draw if p1 == p2
    return @name1 if p1 > p2
    @name2
  end
end
