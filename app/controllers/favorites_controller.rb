class FavoritesController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate_user! 

  def create
    @user = current_user.id
    favorite = current_user.favorites.create(article_id: params[:article_id])
    redirect_to articles_url, notice: "You liked #{favorite.article.user.name}'s article"
=======
  before_action :authenticate_with_http_digest

  def create
    favorite = current_user.favorites.create(article_id: params[:article_id])
    redirect_to articles_url, notice: "#{favorite.article.user}You have successfull liked this article"
>>>>>>> 297e12387328d626196bf50becc9f2a32b0690ed
  end

  def destroy
    favorite = current_user.favorites.find_by(article_id: params[:article_id]).destroy
<<<<<<< HEAD
    redirect_to articles_url, notice: "#{favorite.article.user.name}'s article is unliked"
  end
  
  def authenticate_user!
    
  end
  
=======
    redirect_to articles_url, notice: "#{favorite.article.user} You have disliked this article"
  end
>>>>>>> 297e12387328d626196bf50becc9f2a32b0690ed
end
