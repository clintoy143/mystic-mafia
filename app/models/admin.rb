class Admin < ApplicationRecord
    validates :admin_name, presence: true
    has_secure_password
end
