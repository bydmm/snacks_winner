class Snack < ActiveRecord::Base
  scope :in_store?, -> { where(wish: false) }
  scope :wishes, -> { where(wish: true) }

  has_many :likes
end
