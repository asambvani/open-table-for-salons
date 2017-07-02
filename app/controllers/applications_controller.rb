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
    @date = "#{params[:date].month}-#{params[:date].day}-#{params[:date].year}"
    @salon = params[:salon].name
  end
end
