class Admin::DesignerController < Admin::AdminController

  layout "adminlayout"

  before_filter :set_constants
  def set_constants
    @designersgestione = "active"
  end

  def index
    @designer = Designer.all
  end
  def new
  end
  def edit
    @designer = Designer.find(params[:id])
  end
  def update
    @designer= Designer.find(params[:id])
    @designer.name =  params[:designer]["name"]
    @designer.description =  params[:designer]["description"]
    if !params[:immagine].blank?
      Designer.saveimg(params[:immagine])
      @designer.image_url = params[:immagine]['image'].original_filename.to_s
    end
    @designer.save
    redirect_to '/admin/designer/' + @designer.id.to_s
  end
  def show
    @designer = Designer.find(params[:id])
  end
  def create
    Designer.saveimg(params[:immagine])
    params[:designer]['image_url'] = params[:immagine]['image'].original_filename.to_s
    @designer = Designer.new(params[:designer])
    @designer.save
    redirect_to '/admin/designer/' + @designer.id.to_s
  end
  def destroy
    @designer = Designer.find(params[:id])
    @designer.destroy

    redirect_to '/admin/designer/'
  end






end
