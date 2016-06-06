class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.string :user_id
      t.string :visa_status
      t.string :reason
      t.string :port_of_entry
      t.string :port_of_exit
      t.float :days
      t.date :entry_date
      t.date :exit_date
      t.string :username

      t.timestamps

    end
  end
end
