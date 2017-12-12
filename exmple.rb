require 'xml/mapping'
class Item
  include XML::Mapping

  text_node :ref, "@reference"
  text_node :descr, "Description"
  numeric_node :quantity, "Quantity"
  numeric_node :unit_price, "UnitPrice"

  def total_price
    quantity*unit_price
  end
end
