FactoryBot.define do
  factory :wantlist, class: WantList do

    association :user, factory: :user

    product "うまい棒1年分"
    url "https://yahoo.com"
    comment "欲しいです"
    want_lists_count 1
    created_at Time.now
    updated_at Time.now
    end
end
