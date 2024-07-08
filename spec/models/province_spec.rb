require 'rails_helper'

RSpec.describe Province, type: :model do
  it "is a valid province" do
    province = FactoryBot.build(:province)
    expect(province).to be_valid
  end

  it "is invalid without name" do
    province = FactoryBot.build(:province, name: nil)
    province.valid?
    expect(province.errors[:name]).to include("can't be blank") 
  end
end
