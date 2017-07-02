class CreateCrimes < ActiveRecord::Migration[5.1]
  def change
    create_table :crimes do |t|
      t.string :type_crime
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :hour
      t.integer :minute
      t.string :hundred_block
      t.string :neighbourhood
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
