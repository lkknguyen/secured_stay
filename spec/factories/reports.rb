# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
    user nil
    id_number "MyString"
    id_type "MyString"
    country_code "MyString"
    activity "MyText"
  end
end
