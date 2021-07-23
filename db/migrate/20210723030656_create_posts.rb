class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :comment
      t.integer :high_score
      t.string :address
      t.integer :machine_id
      t.integer :user_id
      t.timestamps
    end
  end
end
