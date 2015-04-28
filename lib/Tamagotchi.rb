class Tamagotchi
  define_method(:initialize) do |name, food, activity, rest|
    @name = name
    @food = food
    @activity = activity
    @rest = rest
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food
  end

  define_method(:activity_level) do
    @activity
  end

  define_method(:rest_level) do
    @rest
  end

  define_method(:is_alive) do
    binding.pry
    if @food == 0 || @rest == 0 || @activity == 10
    binding.pry
      "Tamagotchi Passed Away"
    else
      "Tamagotchi is still alive"
    end
  end
end
