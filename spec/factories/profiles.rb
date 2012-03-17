# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    entity "MyString"
    profession "MyString"
    skills "MyText"
  end
end
