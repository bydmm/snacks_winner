class User < ActiveRecord::Base
  has_secure_password

  has_many :likes

  def name
    "#{first_name} #{last_name}"
  end

  def avatar_url
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
