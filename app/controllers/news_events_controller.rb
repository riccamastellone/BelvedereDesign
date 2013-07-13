class NewsEventsController < ApplicationController
  def index
    @news = News.all
    @attivo = 8
  end
end
