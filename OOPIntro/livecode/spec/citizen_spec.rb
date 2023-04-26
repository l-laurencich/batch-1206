require_relative "../citizen.rb"

describe Citizen do
  describe "#can_vote?" do 
    it "should return true if citizen is at least 18 years old" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it "should return false if citizen is not 18 years old yet" do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it "returns the full name of the citizen properly capitalized" do
      citizen = Citizen.new("bOris", "knEzEvic", 28)
      expect(citizen.full_name).to eq("Boris Knezevic")
    end
  end
end