class CreateFinishes < ActiveRecord::Migration
  def change
    create_table :finishes do |t|
      t.integer :snack_id

      t.timestamps
    end
    add_index :finishes, :snack_id
  end
end
