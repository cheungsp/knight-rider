class CreateCameras < ActiveRecord::Migration[5.1]
  def change
    create_table :cameras do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
