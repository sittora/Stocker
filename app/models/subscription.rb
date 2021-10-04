class Subscription < ActiveRecord::Base
    belongs_to :stock
    belongs_to :user
  

    def print_details
         "#{user.name} owns #{stock.number_of_stocks} shares of #{stock.name} for #{self.price}"
    end

    

end