class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :price
      t.integer :total_stock
      t.string :ticker_tag
    end
  end
end
