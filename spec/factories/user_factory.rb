FactoryBot.define do
  factory :user do
    sequence(:first_name) { |n| "first_name#{n}" }
    sequence(:last_name) { |n| "last_name#{n}" }
    sequence(:email) { |n| "email#{n}@gmail.com" }
    password '123456'
    admin false

    factory :admin do
      admin true
    end

  end
end