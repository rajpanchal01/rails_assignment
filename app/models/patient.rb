class Patient < ApplicationRecord
    validates :name, presence: true
    validates :email, uniqueness: true
    validates :email, presence: true
    has_many :appointments
    has_many :physicians, through: :appointments
end
