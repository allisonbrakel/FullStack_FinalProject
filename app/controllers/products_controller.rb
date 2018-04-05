class ProductsController < ApplicationController
  before_action :initialize_session

  def index
    @products = Product.order(:name).page(params[:page]).per(6)
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id
    redirect_to products_path
  end

  private

  def initialize_session
    session[:cart] ||= []
  end
end
