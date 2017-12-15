class Cat

    def initialize(name, preferred_food, meal_time)
      @name = name
      @preferred_food = preferred_food
      @meal_time = meal_time
    end

    def eats_at
      if @meal_time > 12
        meal_time = @meal_time -12
        puts "#{meal_time} PM"
      else
        puts "#{@meal_time} AM"
      end
    end
end
