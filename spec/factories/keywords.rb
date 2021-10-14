FactoryBot.define do
  factory :keyword do
    volume 1
    description "MyText"
    query "MyText"
    goal_pv 1
    goal_cvr 1.5
    goal_price ""
    goal_profit 1.5
    goal_rank 1
    user nil
  end
end
