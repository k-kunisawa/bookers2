class BooksController < ApplicationController
  def new
    @book = Book.new
  end

#データの保存
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
  end

  def show
  end
  
  #データのストロングパラメータ
private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
