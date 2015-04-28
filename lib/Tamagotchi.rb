class Tamagotchi
  define_method(:initialize) do |name, food, rest, activity|
    @name = name
    @food = food
    @rest = rest
    @activity = activity

  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food
  end

  define_method(:rest_level) do
    @rest
  end

  define_method(:activity_level) do
    @activity
  end

  define_method(:is_alive) do
    if @food > 9
      "Your Tamagotchi popped. You over fed him"
    elsif @activity > 9 || @rest == 0
      "Your Tamagotchi died of exhaustion"
    elsif @food == 0
        "Your Tamagotchi Starved"
    else
      "Tamagotchi is still alive"
    end
  end

  define_method(:feed) do
    @food += 1
  end

  define_method(:put_to_bed) do
    @rest += 1
  end

  define_method(:play_with) do
    @activity += 1
  end


end
