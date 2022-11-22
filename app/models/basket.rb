class Basket < ApplicationRecord
  belongs_to :user
  belongs_to :relay_point
  has_many :basket_items, dependent: :destroy
end
