class CreateQuestions < ActiveRecord::Migration
  def change
     create_table :questions do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.references :subject, index: true
      t.references :user, index: true

      t.timestamp
    end
  end
end
