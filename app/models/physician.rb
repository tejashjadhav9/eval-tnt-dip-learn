class Physician < ApplicationRecord
    has_many :appointments 
    has_many :patients , through: :appointments  


    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :tel_no ,length: { maximum: 11 },numericality: true
    validates :email, presence: true ,uniqueness: true
    
end
