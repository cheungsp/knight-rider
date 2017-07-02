class CreateAccidents < ActiveRecord::Migration[5.1]
  def change
    create_table :accidents do |t|
      t.string :crash_type
      t.integer :crash_count
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
