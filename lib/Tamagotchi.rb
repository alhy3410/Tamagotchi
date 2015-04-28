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
    if @food == 0 || @rest == 0 || @activity == 10
      "Tamagotchi Passed Away"
    else
      "Tamagotchi is still alive"
    end
  end
end
