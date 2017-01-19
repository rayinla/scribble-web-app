class CreateQuestions < ActiveRecord::Migration
  def change
     create_table :subjects do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.refernces :subject, index: true
      t.refernces :user, index: true

      t.timestamp
    end
  end
end
