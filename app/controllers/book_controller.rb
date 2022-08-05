class BookController < ApplicationController
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new   
  end

  def create
    @book = Book.new(book_params)   
    if @Book.save   
      flash[:notice] = 'Book added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to add book!'   
      render :new   
    end   
  end

  def edit
    @book = Book.find(params[:id])  
  end

  def update
    @book = Book.find(params[:id])   
    if @book.update_attributes(book_params)   
      flash[:notice] = 'Book updated!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit book!'   
      render :edit   
    end   
  end

  def destroy
    @book = Book.find(params[:id])   
    if @book.delete   
      flash[:notice] = 'Book removed!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete book!'   
      render :destroy   
    end   
  end
end
