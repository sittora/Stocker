class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/stocks' do 
    Stock.all.to_json
end 


post '/stocks' do 
    stock = Stock.create(
        name: params[:name],
        price: params[:price],
        total_stock: params[:total_stock],
        ticker_tag: params[:ticker_tag]
    )
    Stock.to_json
end 

get '/stocks/:id' do
    stock = Stock.find(params[:id])
    Stock.to_json
end

patch '/stocks/:id' do
    stock = Stock.find(params[:id])
    Stock.update(params)
    Stock.to_json
end

delete '/stocks/:id' do
    stock = Stock.find(params[:id])
    Stock.destroy
end

end
