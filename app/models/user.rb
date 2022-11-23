class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :baskets

  def current_basket
    baskets.all_pending.last
  end

  def full_name
    return email unless first_name && last_name

    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
