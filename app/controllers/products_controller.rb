class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @basket_item = BasketItem.new
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @product.destroy
      redirect_to products_path, status: :see_other
    else
      redirect_to products_path, flash[:error] = "Le produit n'a pas pu etre supprimé: #{@product.errors.full_messages.join(', ')}"
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :pricing, :quantity, :category, :photo)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
