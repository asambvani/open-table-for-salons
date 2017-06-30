class Customer < ActiveRecord::Base
  has_many :appointments
  has_many :stylists, through: :appointments 
end
