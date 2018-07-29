require 'securerandom'

FactoryBot.define do
  factory :user do

    sequence :email do |n|
      "abcd#{n}@com"
    end
    password SecureRandom.urlsafe_base64
    created_at Time.now
    updated_at Time.now
  end
end