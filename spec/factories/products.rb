# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    sequence :sn do |n|
      "622342323#{n}"
    end
    sequence :name do |n|
      "warehouse name #{n}"
    end
    description "Description"
  end
end
