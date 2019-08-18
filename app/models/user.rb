class User < ActiveRecord::Base
    has_secure_password
    has_many :cookies, foreign_key: "user_id", class_name: "Cookie"

    validates :name, presence: true
    validates :username, presence: true, uniqueness: true

end