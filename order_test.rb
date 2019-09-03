require "test/unit"
require_relative "order"
require_relative "menu"

class OrderTest < Test::Unit::TestCase
  def setup
    items = {
      Latte: 4.00,
      Scones: 5.00,
      Tea: 3.00,
    }

    @menu = Menu.new(items)

    @order = Order.new(@menu)
  end

  def test_add_item
    @order.add_item("Latte", 2)
    assert_equal(1, @order.number_of_items)
    assert_equal(2, @order.get_qty("Latte"))
  end

  def test_display_order
    @order.add_item("Latte", 2)
    @order.add_item("Tea", 1)
    order_text = @order.show
    assert_equal("Your Order\n----------\n2x Latte - $8.00\n1x Tea - $3.00\n----------\nTotal: $11.00\n", order_text)
  end
end
