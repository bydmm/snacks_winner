class AddWishToSnack < ActiveRecord::Migration
  def change
    add_column :snacks, :wish, :boolean
  end
end
