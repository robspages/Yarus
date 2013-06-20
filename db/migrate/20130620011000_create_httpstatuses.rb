class CreateHttpstatuses < ActiveRecord::Migration
  def change
    create_table :httpstatuses do |t|
      t.string :status_code
      t.integer :link_id

      t.timestamps
    end
  end
end
