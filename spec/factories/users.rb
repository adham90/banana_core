# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email }
    phone { Faker::Number.unique.number(11) }
    password { 'password123' }
    password_confirmation { 'password123' }
  end
end
