class FavoritesController < ApplicationController
  before_action :authenticate_with_http_digest

  def create
    favorite = current_user.favorites.create(article_id: params[:article_id])
    redirect_to articles_url, notice: "#{favorite.article.user}You have successfull liked this article"
  end

  def destroy
    favorite = current_user.favorites.find_by(article_id: params[:article_id]).destroy
    redirect_to articles_url, notice: "#{favorite.article.user} You have disliked this article"
  end
end
