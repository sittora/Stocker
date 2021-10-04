class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.integer :number_of_stocks
      t.integer :stock_price
      t.integer :date
      t.belongs_to :stock
      t.belongs_to :user
    end
  end
end
