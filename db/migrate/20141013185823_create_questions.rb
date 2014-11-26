class CreateQuestions < ActiveRecord::Migration
  def change
 
    create_table :questions do |t|
	  t.belong_to :question
      t.integer :question_id
      t.integer :creator_id
      t.string :title
      t.text :content
      t.integer :category
      t.boolean :answered
      t.string :closing_comment
      t.datetime :timestamp

      t.timestamps
    end
  end


end
