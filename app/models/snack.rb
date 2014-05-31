# == Schema Information
#
# Table name: snacks
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Snack < ActiveRecord::Base
  has_many :wishes
  has_many :inventories
  has_many :finishes
  has_many :likes
  has_many :comments

  mount_uploader :cover, CoverUploader
end
