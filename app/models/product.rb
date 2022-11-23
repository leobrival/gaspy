class Product < ApplicationRecord
    has_many :basket_items
    has_one_attached :photo
    validates :name, presence: true
    validates :pricing, presence: true
    validates :category, presence: true
end
