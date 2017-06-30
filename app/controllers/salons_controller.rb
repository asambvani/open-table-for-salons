class SalonController < ApplicationController

  get "/salons" do
    @salons = Salon.all
    erb :'salon/index'
  end

  get "salons/:id" do
    @salon = Salon.find(params[:id])
    erb :show
  end

end
