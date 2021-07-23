class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :machine_name
      t.timestamps
    end
  end
end
