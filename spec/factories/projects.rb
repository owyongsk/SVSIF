# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :projects do
    title "MyString"
    desc "MyText"
    profile_id 1
  end
end
