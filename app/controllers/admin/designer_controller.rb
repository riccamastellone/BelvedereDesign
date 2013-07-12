class Admin::DesignerController < AdminController
  layout "adminlayout"
  def index
    @designer = Designer.All
  end
  def new
  end
  def edit
    @designer = Designer.find(params[:id])
  end
  def update
    @designer= Designer.find(params[:id])
    @designer.title =  params[:news]["title"]
    @designer.text =  params[:news]["text"]
    @designer.save
    redirect_to '/admin/designer/' + @designer.id.to_s
  end
  def show
    @designer = Designer.find(params[:id])
  end
  def create
    @designer = Designer.new(params[:designer])
    @designer.doupload(params[:designer])

    #@designer.save
    #redirect_to '/admin/designer/' + @designer.id.to_s
  end
  def destroy
    @designer = Designer.find(params[:id])
    @designer.destroy

    redirect_to '/admin/designer/'
  end






end
