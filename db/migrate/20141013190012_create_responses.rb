class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :response_id
      t.integer :q_response_id
      t.integer :r_response_id
      t.integer :creator_id
      t.integer :response_score
      t.text :content
      t.datetime :timestamp

      t.timestamps
    end
  end
end
