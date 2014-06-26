class NewsController < ActionController::Base

  def index
    @news = New.all
  end

  def show
    @new = New.find(params[:id])
  end

end