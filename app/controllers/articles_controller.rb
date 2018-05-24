class ArticlesController < ApplicationController
  before_action :require_login, only: [:new, :edit, :show]
  
   http_basic_authenticate_with name: "mageza", password: "adolphe", except: [:index, :show]
  
  def index
    @articles = Article.all
    
  end
  
  def show
    @article = Article.find(params[:id])
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
 
  if @article.save
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
    params.require(:article).permit(:title, :text)
  end
  
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_session_path # halts request cycle
    end
  end
end
