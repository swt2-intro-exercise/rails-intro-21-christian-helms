class AuthorsController < ApplicationController
  def index
    @author = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @article = Author.new
  end

  def create
    @article = Author.new(first_name: "...")

    if @article.save
      redirect_to @author
    else
      render :new
    end
  end
end
