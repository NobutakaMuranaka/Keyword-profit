FactoryBot.define do
  factory :keyword do
    volume { 400 }
    description { "競合性そこそこ" }
    query { "タブレット学習 デメリット" }
    goal_pv { 100 }
    goal_cvr { 1.0 }
    goal_price { 1000 }
    goal_profit { 1000 }
    goal_rank { 1 }
    association :user
  end
end
