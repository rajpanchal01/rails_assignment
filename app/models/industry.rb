class Industry < ApplicationRecord
    validates :name, presence: true
    validates :email, uniqueness: true
    has_and_belongs_to_many :sectors
    before_create :set_registration_number

    def set_registration_number
        self.registration_number = generate_registration_number
    end

    def generate_registration_number
    loop do
        number = SecureRandom.random_number(10000000)
        registration_number = "IN#{number}"

        break registration_number unless Industry.where(registration_number: registration_number).exists?
    end
    end
end
