class RelayPoint < ApplicationRecord
    has_many :baskets, dependent: :destroy
    validates :name, presence: true
    validates :address, presence: true
end
