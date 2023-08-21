class BooksController < ApplicationController
  
  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end
  
  def index
    @books = Book.all

   
  end
  
  def edit
    @book = Book.all
    
  end
  
 
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

