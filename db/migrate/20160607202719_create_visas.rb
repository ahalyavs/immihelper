class CreateVisas < ActiveRecord::Migration
  def change
    create_table :visas do |t|
      t.string :status

      t.timestamps

    end
  end
end
