require('rspec')
require('Tamagotchi')
require('pry')

describe(Tamagotchi) do

  describe("#initialize") do
    it("will show the name and stats of the tamagotchi") do
      my_pet = Tamagotchi.new("Fido",5,5,5)
      expect(my_pet.name()).to(eq("Fido"))
      expect(my_pet.food_level()).to(eq(5))
      expect(my_pet.activity_level()).to(eq(5))
      expect(my_pet.rest_level()).to(eq(5))
    end
  end

  describe("#is_alive") do
    it("will check all the Tamagotchi pet's levels to see if alive") do
      my_pet = Tamagotchi.new("Fido",5,5,5)
      expect(my_pet.is_alive()).to(eq("Tamagotchi is still alive"))
    end
  end

  describe("#is_alive") do
    it("will check all the Tamagotchi pet's levels to see if alive") do
      my_pet_dead = Tamagotchi.new("Fido's Dead",5,5,10)
      expect(my_pet_dead.is_alive()).to(eq("Tamagotchi Passed Away"))
    end
  end

end
