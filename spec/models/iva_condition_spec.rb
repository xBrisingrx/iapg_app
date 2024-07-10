require 'rails_helper'

RSpec.describe IvaCondition, type: :model do
  it "is a valid iva condition" do
    iva_condition = FactoryBot.build(:iva_condition)
    expect(iva_condition).to be_valid
  end

  it "is invalid without name" do
    iva_condition = FactoryBot.build(:iva_condition, name: nil)
    iva_condition.valid?
    expect(iva_condition.errors[:name]).to include("can't be blank") 
  end

  it "is invalid with same name" do
    iva_condition = FactoryBot.create(:iva_condition)
    iva_condition2 = FactoryBot.build(:iva_condition)
    iva_condition2.valid?
    expect(iva_condition2.errors[:name]).to include("has already been taken")
  end
end
