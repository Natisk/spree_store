class ArticlesController < ActionController::Base

  def index
    @articles = Article.includes(:comments).order(created_at: 'DESC')
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    if @article.save
      render :show
    else
      render :new, notice: 'Error has occurred while creating.'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      redirect_to :back, notice: 'Error has occurred while updating.'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article
      @article.destroy
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :description)
  end

end