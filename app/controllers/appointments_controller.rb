class AppointmentController < ApplicationController

  get '/appointments/:id' do
    @appointment = Appointment.find(params[:id])
    erb :'appointments/show'
  end

  patch '/appointments/:id' do
    appointment = Appointment.find(params[:id])
    appointment.update(date_time: params[:new_date_time])
    redirect '/appointments/#{appointment.id}'
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

end
