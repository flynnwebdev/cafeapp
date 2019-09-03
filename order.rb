class Order
  def initialize(menu)
    @menu = menu
    @items = {}
  end

  def add_item(name, qty)
    # Set key 'name' in 'items' hash to value in qty
    @items[name] = qty
  end

  def number_of_items
    return @items.length
  end

  def get_qty(name)
    return @items[name]
  end

  def show
    title = "Your Order"
    lines = []

    lines << title
    lines << "-" * title.length
    total = 0
    @items.each do |name, qty|
      subtotal = (@menu.get_price(name) * qty)
      total += subtotal
      lines << "#{qty}x #{name} - $%.2f" % subtotal
    end
    lines << "-" * title.length
    lines << "Total: $%.2f" % total
    return lines.join("\n") + "\n"
  end
end
