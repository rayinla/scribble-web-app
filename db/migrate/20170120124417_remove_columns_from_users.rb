class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :rank, :string
    remove_column :users, :popularity, :integer
    remove_column :users, :follow_id, :integer
  end
end
