class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question
      t.integer :answer_id
      t.integer :q_response_id
      t.integer :creator_id
      t.integer :response_score
      t.text :content
      t.datetime :timestamp

      t.timestamps
    end
  end
end
