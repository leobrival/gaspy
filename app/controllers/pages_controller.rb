class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @current_basket = current_user.current_basket
    @finished_baskets = current_user.baskets.all_finished
  end
end
