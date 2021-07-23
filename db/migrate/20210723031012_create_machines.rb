class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.string :manufacturer
      t.integer :high_score
      t.integer :machine_id
      t.string :machine_name
      t.timestamps
    end
  end
end
