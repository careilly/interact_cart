class Order < ApplicationRecord
  belongs_to :cart , :class_name => "InteractCart::Cart"
  def orderid
    id
  end
end
