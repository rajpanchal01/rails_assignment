class Physician < ApplicationRecord
    validates :name, presence: true
    validates :email, uniqueness: true
    validates :email, presence: true
    has_many :appointments
    has_many :patients, through: :appointments
    before_create :set_unique_id

    def set_unique_id
        self.unique_id = generate_unique_id
    end

    def generate_unique_id
    loop do
        number = SecureRandom.random_number(10000)
        unique_id = "PHY#{number}"

        break unique_id unless Physician.where(unique_id: unique_id).exists?
    end
    end
end
