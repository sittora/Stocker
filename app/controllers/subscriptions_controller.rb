class SubscriptionsController < ApplicationController


    get '/subscriptions' do 
        Subscription.all.to_json
    end 


    post '/subscriptions' do 
        subscription = Subscription.create(
            number_of_stocks: params[:number_of_stocks],
            stock_price: params[:stock_price],
            date: params[:date]
        )
        subscription.to_json
    end 

    get '/subscriptions/:id' do
        subscription = Subscription.find(params[:id])
        subscription.to_json
    end

    patch '/subscriptions/:id' do
        subscription = Subscription.find(params[:id])
        subscription.update(params)
        subscription.to_json
    end

    delete '/subscriptions/:id' do
        subscription = Subscription.find(params[:id])
        subscription.destroy
    end

end

