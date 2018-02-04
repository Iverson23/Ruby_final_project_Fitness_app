class HomeController < ApplicationController
  def index
    @news = News.order(created_at: :desc).all
  end

  def about

  end

  def show
    @news = News.find(params[:id])
  end
end
