class UsersController < ApplicationController

  def index

  end

  def show
    @users = User.find(params[:id])

    @book = Book.new
    @books = @users.books

  end

  def edit
     @user = User.find(params[:id])


  end

end

