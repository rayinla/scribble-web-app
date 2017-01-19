class CreateAnswers < ActiveRecord::Migration
  def change
     create_table :answers do |t|
      t.string :content, null: false
      t.references :user, index: true
      t.references :questions, index: true
      t.timestamp
    end
  end
end
