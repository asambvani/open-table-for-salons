class AppointmentController < ApplicationController

  get '/appointments/:id' do
    @appointment = Appointment.find(params[:id])
    erb :'/appointments/show'
  end

  patch '/appointments/:id' do
    appointment = Appointment.find(params[:id])
    appointment.update(date_time: params[:new_date_time])
    appointment.save
    redirect "/appointments/#{appointment.id}"
  end

  delete '/appointments/:id' do
    appointment = Appointment.find(params[:id])
    appointment.destroy
    redirect '/'
  end

  get '/appointments/:id/edit' do
    @appointment = Appointment.find(params[:id])
    erb :'appointments/edit'
  end

  get '/appointments/new/:month/:day/:year/:time/:am_pm/:stylist_id' do
    @date = "#{params[:month]}/#{params[:day]}/#{params[:year]}"
    @time = params[:time]
    @am_pm = params[:am_pm]
    @stylist = Stylist.find(params[:stylist_id])
    erb :'/appointments/new'
  end

  post '/appointments' do
    binding.pry
  end

end
