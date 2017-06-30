class Stylist < ActiveRecord::Base
  belongs_to :salon
  has_many :appointments
  has_many :services
end
