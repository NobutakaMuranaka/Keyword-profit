class Keyword < ApplicationRecord
  belongs_to :user
  validates :volume, :goal_pv, :goal_cvr, :goal_price, :goal_profit, :goal_rank, presence: true
  validates :description, length: { maximum: 200 }
  validates :query, presence: true, length: { maximum: 30 }
end
