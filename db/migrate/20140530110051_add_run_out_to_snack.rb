class AddRunOutToSnack < ActiveRecord::Migration
  def change
    add_column :snacks, :run_out, :boolean, default: false
  end
end
