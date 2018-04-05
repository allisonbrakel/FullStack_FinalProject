class SearchController < ApplicationController
  def index
    @search_terms = params[:q]

    if params[:category_id].blank?
      @products = Product.where("artist_name LIKE \"%#{@search_terms}%\"
                                or name LIKE \"%#{@search_terms}%\"")
    else
      category = Category.find(params[:category_id])
      @products = category.products.where('name LIKE ? or artist_name LIKE ?',
                                          "%#{@search_terms}%", "%#{@search_terms}%")
    end
  end
end
