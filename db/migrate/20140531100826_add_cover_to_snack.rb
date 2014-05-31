class AddCoverToSnack < ActiveRecord::Migration
  def change
    add_column :snacks, :cover, :string
  end
end
