class Menu
  def initialize(items)
    @items = items
  end

  def get_price(name)
    return @items[name.to_sym]
  end

  def show
    title = "Cafe Menu"
    lines = []
    lines << title
    lines << "-" * title.length
    @items.each {|name, price| lines << "#{name} - $%.2f" % price}
    return lines.join("\n") + "\n"
  end
end
