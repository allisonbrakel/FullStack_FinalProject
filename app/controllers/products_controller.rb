class ProductsController < ApplicationController
  def index
    @products = Product.order(:name).page(params[:page]).per(6)
  end

  def show
    @product = Product.find(params[:id])
  end
end
