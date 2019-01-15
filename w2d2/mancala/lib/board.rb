class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    place_stones
  end

  def place_stones
    (0...@cups.length).each do |i| 
      next if i == 6 || i == 13
      @cups[i] = [:stone,:stone,:stone,:stone]
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless (0..13).include?(start_pos)
    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    num = @cups[start_pos].length
    @cups[start_pos] = []
    i = start_pos
    while num > 0
      @cups[i+1] << :stone
      i+=1
      num-=1
    end

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    if @cups[0..5].all? {|cup| cup.empty?} 
      return true
    elsif @cups[7..12].all? {|cup| cup.empty?}
      return true
    else
      return false
    end
  end

  def winner
  end
end
