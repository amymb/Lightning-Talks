class AddUserIdToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :user_id, :string
  end

  add_index :users, :user_id
end
