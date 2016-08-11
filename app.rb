require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
  	@person = params[:name]
   "Goodbye #{@person}"
  end

  get '/multiply/:num1/:num2' do
  	@num_first = params[:num1]
  	@num_second = params[:num2]
    @num_sum = @num_first.to_i * @num_second.to_i
   "#{@num_sum}"
  end 
end