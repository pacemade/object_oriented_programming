class Player

    def initialize(gold_coins, health_points, lives)
      @lives = 5
      @gold_coins = 0
      @health_points = 10
    end

    def level_up
      @lives += 1
    end

    def collect_treasure
      @gold_coins += 1
      if @gold_coins % 10 == 0
          level_up
      end
    end


end
