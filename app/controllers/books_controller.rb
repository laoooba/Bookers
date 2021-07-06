class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to root_path
  end

  def edit
  end



  private
  def book_params
    params.permit(:title, :body)

  end

end
