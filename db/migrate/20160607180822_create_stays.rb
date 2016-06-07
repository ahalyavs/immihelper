class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.string :user_id
      t.string :notes
      t.string :visa_status
      t.string :reason_for_stay
      t.string :port_of_exit
      t.string :port_of_entry
      t.float :number_of_days
      t.date :exit_date
      t.date :entry_date

      t.timestamps

    end
  end
end
