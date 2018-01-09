FactoryGirl.define do 
  factory :user do
    # the sequence method - every additional User record, n value gets incremented by one. I.e. the first created user‘s name is going to be test0, the second one’s test1, etc
    sequence(:name) { |n| "test#{n}" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password '123456'
    password_confirmation '123456'
  end
end