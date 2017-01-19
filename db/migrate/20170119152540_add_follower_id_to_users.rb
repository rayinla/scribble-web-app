class AddFollowerIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :follow_id, :integer
  end
end
