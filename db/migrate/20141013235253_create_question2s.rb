class CreateQuestion2s < ActiveRecord::Migration
  def change
    create_table :question2s do |t|
      t.integer :question_id
      t.integer :creator_id
      t.string :title
      t.text :content
      t.integer :category
      t.boolean :answer
      t.datetime :timestamp
      t.string :closingcommnet

      t.timestamps
    end
  end
end
