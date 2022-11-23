class BasketItem < ApplicationRecord
  belongs_to :product
  belongs_to :basket
  after_commit :maj_qte_product, on:[:create, :update]
  after_commit :maj_qte_product_back, on:[:destroy]

  def price
    product.pricing * quantity
  end

  def maj_qte_product
    product.quantity -= self.quantity
    product.save
  end

  def maj_qte_product_back
    product.quantity += self.quantity
    product.save
  end
end
