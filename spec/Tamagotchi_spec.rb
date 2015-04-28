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
      my_pet_needsleep = Tamagotchi.new("Fido's Dead",5,5,10)
      expect(my_pet_needsleep.is_alive()).to(eq("Your Tamagotchi died of exhaustion"))
    end
  end

  describe("#is_alive") do
    it("will check all the Tamagotchi pet's levels to see if alive") do
      my_pet_overeat = Tamagotchi.new("Fido's Dead",10,5,5)
      expect(my_pet_overeat.is_alive()).to(eq("Your Tamagotchi popped. You over fed him"))
    end
  end

  describe("#feed") do
    it("will allow the user to feed the tamagotchi") do
      my_pet = Tamagotchi.new("Fido",5,5,5)
      expect(my_pet.feed()).to(eq(6))
    end
  end

end
