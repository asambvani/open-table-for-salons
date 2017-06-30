class StylistController < ApplicationController

  get "/stylists" do
    @stylists = Stylist.all
    erb :'stylists/index'
  end

  get "/stylists/:id" do
    @stylist = Stylist.find(params[:id])
    erb :'stylists/show'
  end

end
