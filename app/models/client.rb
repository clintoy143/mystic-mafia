class Client < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, confirmation: true
end
