# == Schema Information
#
# Table name: inventories
#
#  id         :integer          not null, primary key
#  snack_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Inventory < ActiveRecord::Base
  belongs_to :snack
end
