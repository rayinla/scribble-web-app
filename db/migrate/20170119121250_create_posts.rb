class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content, null: false
      t.references :user

      t.timestamp
    end
  end
end
