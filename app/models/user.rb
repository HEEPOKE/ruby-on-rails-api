require_relative "../enums/role_enum"

class UserModel < ApplicationRecord
    validates :id, presence: false
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: false
    validates :tel, presence: true
    enum role: { ADMIN: RoleEnum::ADMIN, USER: RoleEnum::USER }
  
    has_secure_password
  end
  