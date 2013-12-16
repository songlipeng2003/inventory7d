# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :warehouse do
    sequence :name do |n|
      "warehouse name #{n}"
    end
    description "Description"
  end
end
