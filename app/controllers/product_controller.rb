class ProductController < ApplicationController

  before_filter :set_constants
  def set_constants
    @attivo = 2
    @classecorpo = "prodotti"
  end

  def index
    @categories = Categoria.all
  end


  def showajax

    @prodotti = Designer.find(params[:id])

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
