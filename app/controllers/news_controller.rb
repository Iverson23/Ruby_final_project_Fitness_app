class NewsController < ApplicationController

  def index
    @news = News.order(created_at: :desc).all
  end

  def show
    @news = News.find(params[:id])
  end

  def create
    news = News.create(news_params)
    if picture
      picture = params[:news][:picture]
      File.open(Rails.root.join('public', 'images', 'news', "#{news_params[:title]}.jpg"), 'wb') do |file|
        file.write(picture.read)
      end
    end
    redirect_to news
  end

  private

  def news_params
    params.require(:news).permit(:title, :body)
  end
end
