class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
