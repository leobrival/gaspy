class Basket < ApplicationRecord
  STATUSES = %w[ new pending finished ]
  
  belongs_to :user
  belongs_to :relay_point, optional: true
  has_many :basket_items
  has_many :products, through: :basket_items

  validates :basket_status, inclusion: { in: STATUSES }

  scope :all_finished,  -> { where(basket_status: "finished") }
  scope :all_pending,   -> { where(basket_status: "pending") }
  scope :all_new,       -> { where(basket_status: "new") }
end
