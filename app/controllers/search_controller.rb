class SearchController < ApplicationController
  def index
    @search_terms = params[:q]
    @products = Product.where('artist_name LIKE "%' + @search_terms + '%"')
  end
end
