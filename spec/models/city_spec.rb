require 'rails_helper'

RSpec.describe City, type: :model do
  it "is a valid city" do
    city = FactoryBot.build(:city)
    expect(city).to be_valid
  end

  it "is invalid without name" do
    city = FactoryBot.build(:city, name: nil)
    city.valid?
    expect(city.errors[:name]).to include("can't be blank") 
  end

  it "is invalid without province" do
    city = FactoryBot.build(:city, province: nil)
    city.valid?
    expect(city.errors[:province]).to include("must exist") 
  end

  it "is invalid with same name and same province" do
    city = FactoryBot.create(:city)
    city2 = FactoryBot.build(:city, province: city.province)
    city2.valid?
    expect(city2.errors[:name]).to include("has already been taken")
  end
end
