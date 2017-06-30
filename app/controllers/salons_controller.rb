class SalonController < ApplicationController

  get "/salons" do
    @salons = Salon.all
    erb :'salons/index'
  end

  get "/salons/:id" do
    @salon = Salon.find(params[:id])
    erb :'salons/show'
  end

end
