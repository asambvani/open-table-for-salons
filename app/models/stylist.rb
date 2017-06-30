class Stylist < ActiveRecord::Base
  belongs_to :salon
  has_many :appointments
  has_many :service_stylists
  has_many :services, through: :service_stylists
end
