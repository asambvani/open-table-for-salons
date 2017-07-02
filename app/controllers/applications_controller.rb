class ApplicationController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/")}
  register Sinatra::Twitter::Bootstrap::Assets

  get '/' do
    @salons = Salon.all
    start_date = Time.now.to_datetime
    end_date = start_date + 30
    @date_range = (start_date...end_date).to_a
    erb :'/application/index'
  end

  post '/availabilities' do
    @date = "#{params[:date].to_datetime.month}-#{params[:date].to_datetime.day}-#{params[:date].to_datetime.year}"
    @salon = params[:salon]
    erb :'/stylists/availabilities'
  end

  get '/stylists/availabilities' do
    erb:'/stylists/availabilities'
  end

end
