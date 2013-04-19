class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.references :office_hour
      t.datetime :time
      t.integer :length

      t.timestamps
    end
    add_index :slots, :office_hour_id
  end
end
