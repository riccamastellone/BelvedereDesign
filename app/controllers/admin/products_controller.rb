class Admin::ProductsController < ApplicationController

  layout "adminlayout"

  before_filter :set_constants
  def set_constants
    @prodottigestione = "active"
  end



  def index
    @products = Product.all
  end
  def show
    redirect_to '/admin/products/'
  end
  def new
  end
  def edit
    @product = Product.find(params[:id])
  end
  def update
    p          params[:product]
    @product= Product.find(params[:id])
    @product.name =  params[:product]["name"]
    @product.description =  params[:product]["description"]
    @product.designer_id =  params["designer_id"]
    @product.categoria_id =  params["categoria_id"]
    @product.featured =  params["featured"] ? true : false
    @product.save
    redirect_to '/admin/products/' + @product.id.to_s
  end
  def create
    @product = Product.new(params[:product])
    @product.designer_id =  params["designer_id"]
    @product.categoria_id =  params["categoria_id"]
    @product.featured =  params["featured"] ? true : false
    @product.save
    redirect_to '/admin/products/' + @product.id.to_s
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to '/admin/products/'
  end
  def editimages
    @productid = params[:id]
    @immagini = ProductImage.where(:product_id => params[:id])
  end
  def addimg
    params[:immagine]['image'].each do |i|
      @img = ProductImage.new(:image_url => i.original_filename, :product_id => params[:id])
      ProductImage.saveimg(i)
      @img.save

    end
    redirect_to '/admin/products/' + params[:id] + '/editimages'
  end
  def deleteimg
    render :nothing => true
    @product = ProductImage.find(params[:id])
    @product.destroy
  end
end
