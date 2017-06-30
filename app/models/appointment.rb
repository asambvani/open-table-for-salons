class Appointment < ActiveRecord::Base
  has_many :stylists
  has_many :customers
end
