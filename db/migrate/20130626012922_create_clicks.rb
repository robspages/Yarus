class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.string :referer
      t.string :ip
      t.datetime :clickdate

      t.timestamps
    end
  end
end
