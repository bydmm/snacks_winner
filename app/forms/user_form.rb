class UserForm < Reform::Form
  property :email
  property :first_name
  property :last_name
  property :password
  property :password_confirmation, empty: true

  validates :email, :first_name, :last_name, presence: true
  validate :uniqueness_of_email
  validates :password,
            length: { minimum: 6, allow_nil: true },
            confirmation: true

  private

  def uniqueness_of_email
    if User.find_by(email: email).present?
      errors.add(:email, 'Email is already in use')
    end
  end
end
