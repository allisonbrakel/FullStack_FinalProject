class ProductsController < ApplicationController
  before_action :initialize_session
  before_action :load_products_in_cart

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

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to products_path+"/cart"
  end

  private

  def initialize_session
    session[:cart] ||= []
  end

  def load_products_in_cart
    @products_in_cart = Product.find(session[:cart])
  end
end
