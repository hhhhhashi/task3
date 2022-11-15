class BooksController < ApplicationController
  
  
  def index
    @book=Book.new
    @books=Book.all
    @user=current_user
  end

  
  def show
    
  end
  
  
  def edit
    
  end
  
  def create
    book=Book.new(Book_params)
    book.save
    redirect_to book_path(@book)
  end
  
end

