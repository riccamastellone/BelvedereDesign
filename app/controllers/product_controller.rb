class ProductController < ApplicationController

  before_filter :set_constants
  def set_constants
    @attivo = 2
    @classecorpo = "prodotti"
  end

  def index
    @categories = Categoria.all
  end


  def listajax


    @prodotti = Product.where(:categoria_id => params[:id])
    render :text => JSON.generate(@prodotti.as_json).html_safe
  end


  def productajax

    @prodottiContainer = Array.new

    prodotti = Product.where(:categoria_id => params[:id])
    prodotti.each do |p|
      immagini = ProductImage.where(:product_id => p.id)
      @prodottiContainer.push('prodotto' => p, "immagini" => immagini)
    end

    render :text => JSON.generate(@prodottiContainer.as_json).html_safe
  end


  def show
    begin
    @prodotto = Product.find(params[:id])
    @designer = Designer.find(@prodotto.designer_id);
    @immagini = ProductImage.where(:product_id => params[:id])
    rescue ActiveRecord::RecordNotFound      #Gestiamo il caso di id non presente
      redirect_to '/'
      return
    end
  end
end
