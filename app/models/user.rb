class User < ActiveRecord::Base
    has_secure_password
    has_many :cookies

    validates :name, presence: true
    validates :username, presence: true, uniqueness: true

end