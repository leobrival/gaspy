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
    respond_to do |format|
      if @basket_item.update(basket_item_params)
        format.html { redirect_to products_path, notice: 'Quantité modifiée' }
        format.json { render json: { basket_price: @basket_item.basket.total_price } }
      else
        format.html { redirect_to products_path, alert: 'La quantité n\a pas pu être modifiée' }
        format.json { render json: { errors: @basket_item.errors.full_messages.join(', ') } }
      end
    end
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
