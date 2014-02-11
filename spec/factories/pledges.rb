# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pledge do
    donate 1.5
    donate_kind_id 1
    not_to_exceed "MyString"
    float "MyString"
    redirect_click "MyString"
    per_uniq_clicl_on "MyString"
  end
end
