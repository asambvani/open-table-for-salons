class Appointment < ActiveRecord::Base
  belongs_to :stylist
  belongs_to :customer
end
