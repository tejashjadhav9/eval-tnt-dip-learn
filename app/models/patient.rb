class Patient < ApplicationRecord
    has_many :appointments 
    has_many :physicians , through: :appointments  


    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true ,uniqueness: true
    validates :phone_no ,length: { maximum: 11 },numericality: true
end