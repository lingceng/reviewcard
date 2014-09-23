# This will guess the User class
FactoryGirl.define do

  factory :user do
    email "jack@example.com"
    password "jack@example.com"
  end

  factory :card do
    question "How to make a card?"
    answer "Just write question and answer"
  end

end
