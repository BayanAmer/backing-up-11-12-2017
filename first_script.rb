require "xml/mapping"
require "rexml/document"
require "rexml/formatters/transitive"

class Item; end
class Item
  include XML::Mappin
  
  text_node :ref, "@reference"
  numeric_node :unit_price, "Unit_price"
  numeric_node :quantity, "Quantity"


 def total_price
    quantity*unit_price
 end
end
