class RemoveAttrFromSnack < ActiveRecord::Migration
  def change
    remove_column :snacks, :wish
    remove_column :snacks, :run_out
  end
end
