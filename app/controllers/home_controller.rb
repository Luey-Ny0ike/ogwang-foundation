class HomeController < ApplicationController

  def index
    @news = News.first(3)
    @projects = Project.first(3)
    @articles = Article.first(3)
  end
end
