class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :snack_id

      t.timestamps
    end
    add_index :inventories, :snack_id
  end
end
