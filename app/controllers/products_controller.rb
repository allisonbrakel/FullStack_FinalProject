class ProductsController < ApplicationController
  before_action :initialize_session
  before_action :load_products_in_cart

  def index
    @products = Product.order(:name).page(params[:page]).per(6)
  end

  def show
    @product = Product.find(params[:id])
  end

  def order
    load_cart
    @security_code = params[@security_code]
    @province = if params[:province_id].blank?
                  Province.find(1)
                else
                  Province.find(params[:province_id])
                end
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id
    redirect_to products_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to '/cart'
  end

  private

  def initialize_session
    session[:cart] ||= []
  end

  def load_products_in_cart
    @products_in_cart = Product.find(session[:cart])
  end

  def load_cart
    @fname = params[:fname]
    @lname = params[:lname]
    @city = params[:city]
    @street = params[:street]
    @pc = params[:pc]
    @cc = params[:cc]
  end
end
