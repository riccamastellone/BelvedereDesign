class ProductController < ApplicationController

  before_filter :set_constants
  def set_constants
    @attivo = 2
    @classecorpo = "prodotti"
  end

  def index
    @categories = Categoria.all
  end

end
