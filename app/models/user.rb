class User < ApplicationRecord
  has_secure_password

  has_many :posts, dependent: :delete_all

  # attr_accessible :email, :password, :password_confirmation

  validates_uniqueness_of :email
end
