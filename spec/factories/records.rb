# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :record do
    warehouse nil
    product nil
    ios_type 1
    number 1
    act_type 1
    note "MyString"
  end
end
