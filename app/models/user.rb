class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    validates :tel, presence: true
    enum role: { ADMIN: "ADMIN", USER: "USER" }
  
    has_secure_password
  end
  