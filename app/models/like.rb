class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :snack

  validates_uniqueness_of :user, scope: :snack_id
end
