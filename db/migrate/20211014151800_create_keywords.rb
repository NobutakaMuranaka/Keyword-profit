class CreateKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :keywords do |t|
      t.integer :volume
      t.text :description
      t.text :query
      t.integer :goal_pv
      t.float :goal_cvr
      t.integer :goal_price
      t.float :goal_profit
      t.integer :goal_rank
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :keywords, [:user_id, :created_at]
  end
end
