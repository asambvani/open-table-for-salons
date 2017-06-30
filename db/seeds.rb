salons = [
  {
  name: "Supercuts",
  address: "45 main street, NY",
  phone: "555-555-5555",
  hours: "8AM - 8PM"
},
{
  name: "number1cuts",
  address: "88 Astor, NY",
  phone: "222-555-5555",
  hours: "9AM - 9PM"
},
{
  name: "dailycuts",
  address: "22 bleecker, NY",
  phone: "111-555-5555",
  hours: "4AM - 8PM"
}
]

salons.each do |salon_params|
  new_salon = Salon.new(salon_params)
  new_salon.save
end

customers = [
  {
  name: "Alex",
  email: "alex@gmail.com",
  phone: "222-123-1234"
},
{
  name: "racquel",
  email: "racquel@gmail.com",
  phone: "235-123-1234"
},
{
  name: "jess",
  email: "jess@gmail.com",
  phone: "221-123-1234"
}
]

customers.each do |customer_params|
  new_customer = Customer.new(customer_params)
  new_customer.save
end

stylists = [
  {
  name: "Bob"
},
{
  name: "Monica"
},
{
  name: "Claire"
}
]

stylists.each do |stylist_params|
  new_stylist = Stylist.new(stylist_params)
  new_stylist.save
end

services = [
  {
  name: "Haircut",
  price: 34
},
{
  name: "Color",
  price: 78
},
{
  name: "Shave",
  price: 22
}
]

services.each do |service_params|
  new_service = Service.new(service_params)
  new_service.save
end

appointments = [
  {
  date_time: "6/30/17, 4pm",
  service: "haircut"
},
{
  date_time: "8/20/17, 2pm",
  service: "shave"
},
{
  date_time: "8/24/17, 1pm",
  service: "color"
}
]

appointments.each do |appointment_params|
  new_appointment = Appointment.new(appointment_params)
  new_appointment.save
end

Stylist.all.each_with_index do |stylist, index|
  stylist.appointments << Appointment.all[index]
  stylist.services << Service.all[index]
  stylist.save
end

Customer.all.each_with_index do |customer, index|
  customer.appointments << Appointment.all[index]
  customer.save
end

Salon.all.each_with_index do |salon, index|
  salon.stylists << Stylist.all[index]
  salon.save
end
