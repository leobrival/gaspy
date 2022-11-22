class Product < ApplicationRecord
    has_many :basket_items
    has_one_attached :photo
end
