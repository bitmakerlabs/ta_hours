class CreateOfficeHours < ActiveRecord::Migration
  def change
    create_table :office_hours do |t|
      t.references :user
      t.datetime :day

      t.timestamps
    end
    add_index :office_hours, :user_id
  end
end
