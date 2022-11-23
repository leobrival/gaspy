class RelayPoint < ApplicationRecord
    has_many :baskets
    validates :name, presence: true
    validates :address, presence: true
end
