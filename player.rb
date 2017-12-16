class Player

    def initialize(gold_coins, health_points, lives)
      @lives = 5
      @gold_coins = 0
      @health_points = 10
    end

    def restart

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

    def fight
      @health_points -= 1
      if @health_points <= 0
        @lives -= 1
        @health_points = 10
          if @lives <= 0
            @lives = 5
            @gold_coins = 0
          end
      end
    end

end
