require "test/unit"
require_relative "menu"

class MenuTest < Test::Unit::TestCase
  def setup
    items = {
      Latte: 4.00,
      Scones: 5.00,
      Tea: 3.00,
    }

    @menu = Menu.new(items)
    # @menu.add_item("Latte", 4.00)
    # @menu.add_item("Scones", 5.00)
    # @menu.add_item("Tea", 3.00)
  end

  def test_show_menu
    menu_text = @menu.show
    assert_equal("Cafe Menu\n---------\nLatte - $4.00\nScones - $5.00\nTea - $3.00\n", menu_text)
  end

  def test_get_price
    assert_equal(4.00, @menu.get_price("Latte"))
    assert_equal(5.00, @menu.get_price("Scones"))
  end
end
