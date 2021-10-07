class User < ActiveRecord::Base
    has_many :subscriptions
    has_many :stocks, through: :subscriptions


    def user_name 
        self.user.name 
    end 
end