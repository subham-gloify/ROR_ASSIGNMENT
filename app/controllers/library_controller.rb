class LibraryController < ApplicationController
  def index
    @library = Library.all  
  end

  def show
    @library = Library.find(params[:id])   
  end

  def new
    @library = Library.new   
  end

  def create
    @library = Library.new(library_params)   
    if @library.save   
      flash[:notice] = 'Library added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit Library!'   
      render :new   
    end
  end

  def edit
    @library = Library.find(params[:id])   
  end

  def update
    @library = Library.find(params[:id])   
    if @library.update_attributes(library_params)   
      flash[:notice] = 'Library updated!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit library!'   
      render :edit   
    end  
  end

  def destroy
    @library = Product.find(params[:id])   
    if @library.delete   
      flash[:notice] = 'Library deleted!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete this library!'   
      render :destroy   
    end   
  end
end
