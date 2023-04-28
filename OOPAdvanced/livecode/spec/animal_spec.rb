# write tests for #initialize, #name and ::phyla methods 
require_relative "../animal.rb"


describe Animal do
  describe "#initialize" do
    it "create an instance of the class Animal" do
      mouse = Animal.new("Mickey")
      expect(mouse).to be_an(Animal)
    end
  end

  describe "#name" do
    it "shows the name of the animal" do
      mouse = Animal.new("Mickey")
      expect(mouse.name).to eq("Mickey")
    end
  end

  describe "::phyla" do
    it "returns the 4 phyla of the animal kingdom" do
      phyla = Animal.phyla
      expect(phyla.size).to eq(4)
    end
  end

end