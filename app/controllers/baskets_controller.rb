class BasketsController < ApplicationController
  before_action :set_basket, only: [:show, :edit, :update, :destroy]

  def index
    @baskets = Basket.all
  end

  def new
    @basket = Basket.new
  end

  def create
    @basket = Basket.new(basket_params)
    @basket.save
    redirect_to basket_path(@basket)
  end

  def show
    @basket_items = @basket.basket_items
    @products = @basket.products
    @basket_items_by_category = @basket.basket_items.includes(:product).group_by { |bi| bi.product.category }
  end

  def edit
  end

  def update
    @basket.update(basket_params)
    redirect_to basket_path(@basket)
  end

  def destroy
    @basket.destroy
    redirect_to baskets_path
  end

  private

  def basket_params
    params.require(:basket).permit(:name, :description,)
  end

  def set_basket
    @basket = Basket.find(params[:id])
  end
end
