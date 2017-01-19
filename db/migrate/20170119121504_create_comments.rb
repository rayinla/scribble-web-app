class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :commentable, polymorphic: true, index: true
      t.references :user, index: true

      t.timestamp
    end
  end
end
