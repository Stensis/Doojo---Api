class User < ApplicationRecord
    has_many :blogs
    has_many :comments
  
    has_secure_password
    validates :password_digest, presence: true
     
    validates :username, presence: true, uniqueness: true, on: :create
    validates :username, uniqueness: true, on: :update
  
    validates :email, presence: true, uniqueness: true, on: :create
    validates :email, uniqueness: true, on: :update
  
  
    attribute :role, :string, default: "user"
    validates :role, inclusion: { in: %w(user admin), message: "%{value} is not a valid role" }
  
    ROLES = %w{admin user}
    ROLES.each do |role_name|
      define_method "#{role_name}?" do 
        role == role_name  
      end
    end
  end
  