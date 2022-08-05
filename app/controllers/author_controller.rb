class AuthorController < ApplicationController
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
    @author = Author.new(author_params)   
    if @author.save   
      flash[:notice] = 'Author added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to add Author!'   
      render :new   
    end   
  end

  def edit
    @author = Author.find(params[:id])  
  end

  def update
    @author = Author.find(params[:id])   
    if @author.update_attributes(author_params)   
      flash[:notice] = 'Author updated!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit author!'   
      render :edit   
    end   
  end

  def destroy
    @author = Author.find(params[:id])   
    if @author.delete   
      flash[:notice] = 'Author deleted!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete this author!'   
      render :destroy   
    end
  end
end
