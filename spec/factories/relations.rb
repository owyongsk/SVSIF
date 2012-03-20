# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :relation do
    profile_id 1
    project_id 1
    relationship "MyString"
  end
end
