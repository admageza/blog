class UsersController < ApplicationController
  before_action :correct_user,   only: [:edit, :delete]
  def show
    @user = User.find(params[:id])
    # @favorites_articles = @user.favorites
     @favorites_articles = current_user.favorite_articles
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
  
  def favorite
      @favorites_articles = Favorite.find(article_id: params[:article_id])
  end
end
