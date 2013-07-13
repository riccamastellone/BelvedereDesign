class DesignersController < ApplicationController
  require 'json'

  before_filter :set_constants
  def set_constants
    @classecorpo = "designers"
  end


  def index
    @designer = Designer.all
  end


  def showajax

    @designer = Designer.find(params[:id])

    @prodottiContainer = Array.new


    prodotti = Product.where(:designer_id => @designer.id)
    prodotti.each do |p|
      immagini = ProductImage.where(:product_id => p.id)
      @prodottiContainer.push('prodotto' => p, "immagini" => immagini)
    end


    respond_to do |format|
      format.html { render :layout => false }
    end



  end

end
