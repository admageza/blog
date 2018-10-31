class ArticlesController < ApplicationController
  before_action :require_login, only: [:new, :edit, :show]
  before_action :correct_user,   only: [ :delete]
  
  # http_basic_authenticate_with name: "mageza", password: "adolphe", except: [:index, :show]
  
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
    @favorite = current_user.favorites.find_by(article_id: @article.id)
    @articles = current_user.articles
    
  end
  
  def new
    if params[:back]
      @article = Article.new(article_params)
    else
      @article = Article.new
    end
  end
  
  def confirm
    @article = Article.new(article_params)
    render :new if @article.invalid?
  end
 
 def edit
  @article = Article.find(params[:id])
 end

def create
  @article = Article.new(article_params)
  @article.user = current_user
 
  if @article.save
    ContactMailer.contact_mail2(current_user.email).deliver
    # ContactMailer.contact_mail(current_user.email).deliver
    redirect_to articles_url, notice: "You have successfull created new Article!"
  else
    render 'new'
  end
end

def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to articles_url, notice: "You have successfull edited this Article！"
  else
    render 'edit'
  end
end

def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_url, notice: "You have successfull deleted the Article!"
end
 
private
  def article_params
    params.require(:article).permit(:title, :text, :image)
  end
  
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_session_path 
    end
  end
  
  def correct_user
    unless @user == current_user
     flash[:error] = "You don't have permission to delete or edit this article"
      redirect_to(root_url) 
    end
  end
end
