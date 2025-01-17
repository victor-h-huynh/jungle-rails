class User < ActiveRecord::Base

    has_secure_password

    has_many :reviews

    validates :name, presence: true
    validates :email, presence: true
    validates :password_digest, presence: true
end
