class User < ActiveRecord::Base
  has_many :posts

  validates :userName, presence: true, length: {maximum: 20, minimum: 3}
  EMAIL = /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :email, presence: true, length: {maximum: 40}, format: {with: EMAIL}, uniqueness: {case_sensitive: false}

  has_secure_password
  validates :password, length: {minimum:6}
end
