class Stylist < ActiveRecord::Base
  belongs_to :salon
  has_many :appointments
  has_many :service_stylists
  has_many :services, through: :service_stylists

  def self.get_available_stylists(day, salon_name)
    self.all.select do |stylist|
      stylist.has_availabilities?(day) && stylist.salon.name == salon_name
    end
  end

  def has_availabilities?(day)
    if self.availabilities(day).values.flatten.length > 0
      return true
    else
      false
    end
  end

  def availabilities(day)
    available_times = self.possible_appointment_times
    self.appointments.each do |appointment|
      appointment_day = appointment.date_time.split(", ")[0]
      time = appointment.date_time.split(", ")[1]
      time_int = time.slice(0..time.length-3).to_i
      if appointment_day == day

        if time.include?("am")
          available_times["am"].delete(time_int)
        elsif time.include?("pm")
          available_times["pm"].delete(time_int)
        end
      end
    end
    available_times
  end

  def possible_appointment_times
    hours_text = self.salon.hours.split(" - ")
    open_time = hours_text[0].chomp("am").to_i
    closing_time = hours_text[0].chomp("pm").to_i
    am_times = (open_time..11).to_a
    pm_times = (1..closing_time).to_a
    pm_times.unshift(12)
    times_hash = {
      "am" => am_times,
      "pm" => pm_times
    }
  end

end
