require 'securerandom'

FactoryBot.define do
  factory :user do
    email "bbbcd@com"
    password SecureRandom.urlsafe_base64
    created_at Time.now
    updated_at Time.now
  end
end