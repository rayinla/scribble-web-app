class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :imageable, polymorphic: true, index: true
      t.references :user, index: true

      t.timestamp
    end
  end
end
