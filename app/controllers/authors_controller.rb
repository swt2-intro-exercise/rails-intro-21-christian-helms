class AuthorsController < ApplicationController
  def index
    @author = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    # @author = Author.new(author_params)
    # @author.save
    # if @author.save
    #   redirect_to @author
    # else
    #   render :new
    # end
    redirect_to "/"
  end

  private
    def author_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
