# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

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
