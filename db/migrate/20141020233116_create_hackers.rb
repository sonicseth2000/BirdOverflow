class CreateHackers < ActiveRecord::Migration
  def change
    create_table :hackers do |t|
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
