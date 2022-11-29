class Product < ApplicationRecord
    has_many :basket_items
    has_one_attached :photo
    validates :name, presence: true
    validates :pricing, presence: true
    validates :category, presence: true

    def save_if_able
      begin
        self.save
      rescue => exception
        puts exception
      end
    end
end
