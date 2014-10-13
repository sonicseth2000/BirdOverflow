class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :message_id
      t.integer :sender_id
      t.integer :receiver_id
      t.string :title
      t.text :content
      t.datetime :timestamp

      t.timestamps
    end
  end
end
