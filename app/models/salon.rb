class Salon < ActiveRecord::Base
  has_many :stylists
  has_many :services, through: :stylists
end
