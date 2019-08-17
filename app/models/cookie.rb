class Cookie < ActiveRecord::Base
    belongs_to :user

    validates :name, presence: true
    validates :cookie_type, presence: true
end