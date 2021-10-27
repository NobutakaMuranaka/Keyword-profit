class AddMediaUrlToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :media_url, :text
  end
end
