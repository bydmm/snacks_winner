# == Schema Information
#
# Table name: wishes
#
#  id         :integer          not null, primary key
#  snack_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Wish < ActiveRecord::Base
  belongs_to :snack
end
