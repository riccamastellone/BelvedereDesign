class Admin::NewsController < Admin::AdminController
  layout "adminlayout"
  def index
    @news = News.all
  end
  def new
  end
  def edit
    @news = News.find(params[:id])
  end
  def update
    @news= News.find(params[:id])
    @news.title =  params[:news]["title"]
    @news.text =  params[:news]["text"]
    @news.save
    redirect_to '/admin/news/' + @news.id.to_s
  end
  def show
    @news = News.find(params[:id])
  end
  def create
    @news = News.new(params[:news])
    @news.save
    redirect_to '/admin/news/' + @news.id.to_s
  end
  def destroy
    @news = News.find(params[:id])
    @news.destroy

    redirect_to '/admin/news/'
  end


end
