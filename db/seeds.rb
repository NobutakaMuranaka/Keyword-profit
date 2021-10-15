# ユーザー
User.create!(
  [
    {
      name:  "山田 良子",
      email: "yamada@example.com",
      password:              "foobar",
      password_confirmation: "foobar",
    }
  ]
)

10.times do |n|
  Keyword.create!(
    query: "タブレット学習 デメリット",
    volume: 400,
    goal_rank: 1,
    goal_pv: 100,
    goal_cvr: 1.0,
    goal_price: 1000,
    goal_profit: 1000,
    description: "競合性そこそこ",
    user_id: 1)
end