class Admin::ProductsController < ApplicationController

  layout "adminlayout"

  before_filter :set_constants
  def set_constants
    @prodottigestione = "active"
  end



  def index
    @products = Product.all
  end
  def new
  end
  def edit
    @product = Product.find(params[:id])
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to '/admin/products/'
  end
end
