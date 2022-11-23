class BasketItemsController < ApplicationController
  before_action :set_basket_item, only: [:update, :destroy]

  def create
    product = Product.find(params[:product_id])
    @basket_item = BasketItem.new(basket_item_params)
    @basket_item.basket = current_user.current_basket
    @basket_item.product = product
    @basket_item.save
    redirect_to products_path #vérifier la page de retour
  end

  def update
    @basket_item.update(basket_item_params)
    redirect_to products_path #vérifier la page de retour
  end

  def destroy
    @basket_item.destroy
    redirect_to products_path #vérifier la page de retour
  end

  private

  def basket_item_params
    params.require(:basket_item).permit(:quantity)
  end

  def set_basket_item
    @basket_item = BasketItem.find(params[:id])
  end
end
