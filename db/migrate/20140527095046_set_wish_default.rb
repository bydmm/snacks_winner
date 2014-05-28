class SetWishDefault < ActiveRecord::Migration
  def change
    change_column :snacks, :wish, :boolean, default: false
  end
end
