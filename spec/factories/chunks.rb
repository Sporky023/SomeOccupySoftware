# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :chunk do
      document nil
      first_char_at 1
      last_char_at 1
    end
end