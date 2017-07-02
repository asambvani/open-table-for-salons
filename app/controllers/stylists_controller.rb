class StylistController < ApplicationController

  get "/stylists" do
    @stylists = Stylist.all
    erb :'stylists/index'
  end

  get "/stylists/:id" do
    @stylist = Stylist.find(params[:id])
    erb :'stylists/show'
  end

  get '/stylists/availabilities' do
    erb:'/stylists/availabilities'
  end

  post '/stylists/availabilities' do
    @date = "#{params[:date].to_datetime.month}/#{params[:date].to_datetime.day}/#{params[:date].to_datetime.year}"
    @salon = params[:salon]
    @available_stylists = Stylist.get_available_stylists(params[:date], @salon)
    erb :'/stylists/availabilities'
  end


end
