class NewsEventsController < ApplicationController
  def index
    @news = News.all
  end
end
