class Player
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
  def level_up
    @lives = @lives + 1
  end
end

nadia = Player.new
nadia.level_up
