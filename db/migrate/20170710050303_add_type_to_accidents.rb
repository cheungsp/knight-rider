class AddTypeToAccidents < ActiveRecord::Migration[5.1]
  def change
    add_column :accidents, :title, :string
  end
end
# x.update_attribute :title, 'Accident'
