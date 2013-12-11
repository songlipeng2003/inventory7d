# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inventory do
    warehouse nil
    product nil
    number 1
  end
end
