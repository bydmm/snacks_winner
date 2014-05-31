# == Schema Information
#
# Table name: finishes
#
#  id         :integer          not null, primary key
#  snack_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Finish < ActiveRecord::Base
  belongs_to :snack
end
