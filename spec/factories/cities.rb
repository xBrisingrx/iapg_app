FactoryBot.define do
  factory :city do
    name { "Comodoro Rivadavia" }
    association :province
  end

  trait :san_rafael do
    name { "San Rafael" }
    association :province, factory: [ :mendoza ]
  end
end
