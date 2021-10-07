class StocksController < ApplicationController 
    
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



