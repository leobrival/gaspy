class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :set_user, only: [:dashboard]
  def home
  end

  def dashboard
    @user = current_user
    @current_basket = current_user.current_basket
    @finished_baskets = current_user.baskets.all_finished
  end

  private

  def set_user
    @user = current_user
  end
end
