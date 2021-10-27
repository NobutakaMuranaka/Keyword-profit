class AddTotalGoalProfitToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :total_goal_profit, :float
  end
end
