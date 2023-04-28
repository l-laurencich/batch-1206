#write test for #talk method
require_relative "../lion.rb"

describe Lion do 
  describe "#talk" do
    it "should return a sentence with the sound the lion makes" do
      simba = Lion.new("Simba")
      expect(simba.talk).to eq("Simba roars")
    end
  end
end