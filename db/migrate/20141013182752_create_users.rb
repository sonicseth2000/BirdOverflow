class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.integer :score
      t.integer :type

      t.timestamps
    end
  end
end
