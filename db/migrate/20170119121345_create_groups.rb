class CreateGroups < ActiveRecord::Migration
  def change
     create_table :groups do |t|
      t.string :name, null: false
      t.references :community, index: true
      t.timestamp
    end
  end
end
