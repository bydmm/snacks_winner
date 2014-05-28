class Snack < ActiveRecord::Base
  scope :in_store?, -> { where(wish: false) }
  scope :wishes, -> { where(wish: true) }

  has_many :likes
  has_many :comments
end
