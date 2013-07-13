class ProductController < ApplicationController

  before_filter :set_constants
  def set_constants
    @attivo = 2
  end

  def index
    @products = Product.all
  end

end
