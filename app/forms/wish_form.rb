class WishForm < Reform::Form
  property :name
  property :description

  validates :name, presence: true
end
