FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password {Faker::Internet.password}
  end

  factory :topic do
    title {Faker::HarryPotter.book + " - " + Faker::HarryPotter.character}
    content {Faker::HarryPotter.quote}
    user
  end
end