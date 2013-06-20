class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :fullurl
      t.string :shorturl
      t.integer :user_id

      t.timestamps
    end
  end
end
