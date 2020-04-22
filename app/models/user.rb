class User < ApplicationRecord
  before_save {self.email = email.downcase}
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6, maximum: 30 }
  validates :address, presence: true
  validates :city, presence: true
  has_secure_password
end
