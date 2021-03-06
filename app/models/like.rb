# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  snack_id   :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :snack

  validates_uniqueness_of :user, scope: :snack_id
end
