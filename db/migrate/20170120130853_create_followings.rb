class CreateFollowings < ActiveRecord::Migration
  def change
     create_table :followings do |t|
      t.string :username
      t.references :user

      t.timestamp
    end
  end
end
