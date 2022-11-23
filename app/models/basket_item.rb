class BasketItem < ApplicationRecord
  belongs_to :product
  belongs_to :basket

  def price
    product.pricing * quantity
  end
end
