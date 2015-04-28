require('rspec')
require('Tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("will show the name and stats of the tamagotchi") do
      my_pet = Tamagotchi.new("Fido")
      expect(my_pet.name()).to(eq("Fido"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
    end
  end
end
