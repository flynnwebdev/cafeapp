require_relative "menu"
require_relative "order"

items = {
  Latte: 4.00,
  Scones: 5.00,
  Tea: 3.00,
}

menu = Menu.new(items)

order = Order.new(menu)

puts "Welcome to Coder Cafe!!"
puts menu.show
input = ""
until input == "done"
    puts "What would you like to order?"
    input = gets.strip
    if items.has_key?(input.to_sym)
        puts "How many?"
        qty = gets.strip.to_i
        order.add_item(input, qty)
    elsif input != "done"
        puts "That item doesn't exist!"
    end
end

puts order.show


