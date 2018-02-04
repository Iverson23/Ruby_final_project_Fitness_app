class HomeController < ApplicationController
  def index
    @news = News.order(created_at: :desc).all
  end

  def about

  end
end
