class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.integer :snack_id

      t.timestamps
    end
    add_index :wishes, :snack_id
  end
end
