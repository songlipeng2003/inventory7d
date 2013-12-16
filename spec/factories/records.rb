# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :record do
    warehouse
    product
    io_type Record::IO_TYPES.keys.sample
    act_type Record::ACT_TYPES.keys.sample
    number Random.new.rand(1..100000)
    note "MyString"
  end
end
