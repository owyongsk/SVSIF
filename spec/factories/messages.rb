# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    to 1
    from 1
    message "MyString"
  end
end
