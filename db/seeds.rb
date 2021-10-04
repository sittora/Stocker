puts "Clearing old data..."
Stock.destroy_all
User.destroy_all
Subscription.destroy_all


puts "🌱 Seeding users..."
u1 = User.create(name: "Benjamin Graham", email: "b.graham@gmail.com", password: "makemoney")
u2 = User.create(name: "John Templeton", email: "j.templeton@gmail.com", password: "buylow")
u3 = User.create(name: "John Neff", email: "j.neff@gmail.com", password: "sellhigh")
u4 = User.create(name: "Warren Buffett", email: "w.buffet@gmail.com", password: "cocacola")
u5 = User.create(name: "George Soros", email: "g.soros@gmail.com", password: "trimhedges")

puts "🌱 Seeding stocks..."
s1 = Stock.create(name: "Apple", price: 140, total_stock: 5000, ticker_tag: "AAPL")
s2 = Stock.create(name: "Twitter", price: 59, total_stock: 1000, ticker_tag: "TWTR")
s3 = Stock.create(name: "Tesla", price: 782, total_stock: 10000, ticker_tag: "TSLA")
s4 = Stock.create(name: "Amazon", price: 3190, total_stock: 6000, ticker_tag: "AMZN")
s5 = Stock.create(name: "Pfizer", price: 43, total_stock: 3000, ticker_tag: "PFE")
s6 = Stock.create(name: "Google", price: 2673, total_stock: 8000, ticker_tag: "GOOGL")
s7 = Stock.create(name: "Squarespace", price: 38, total_stock: 2000, ticker_tag: "SQSP")

puts "🌱 Seeding subscriptions..."
Subscription.create(number_of_stocks: 500, stock_price: s1.price, date: 03112021, stock_id: s1.id, user_id: u1.id)
Subscription.create(number_of_stocks: 300, stock_price: s2.price, date: 03112021, stock_id: s2.id, user_id: u2.id)
Subscription.create(number_of_stocks: 600, stock_price: s3.price, date: 03112021, stock_id: s3.id, user_id: u3.id)
Subscription.create(number_of_stocks: 340, stock_price: s4.price, date: 03112021, stock_id: s4.id, user_id: u4.id)
Subscription.create(number_of_stocks: 290, stock_price: s5.price, date: 03112021, stock_id: s5.id, user_id: u5.id)
Subscription.create(number_of_stocks: 754, stock_price: s6.price, date: 03112021, stock_id: s6.id, user_id: u2.id)
Subscription.create(number_of_stocks: 507, stock_price: s7.price, date: 03112021, stock_id: s7.id, user_id: u1.id)



puts "✅ Done seeding!"



