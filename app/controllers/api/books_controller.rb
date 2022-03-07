class Api::BooksController < ApplicationController
before_action :set_book, only: [:show, :update, :destroy]
#get request 'api/authors'
#will return all authors as json
def index
        render json: Book.all
end

def show
    render json: @Book
end

def create
  #create author in memor with sanitized params
  author = Book.new(book_params)
  #try to save to DB
  if(book.save)
    render json: book
  else 
    render json: {errors: book.errors.full_messages}, status: 422
  end
end
 
def update
  if(@book.update(book_params))
    render json: @book
  else 
    render json: {errors: @book.errors.full_messages}, status: 422
  end
end

def destroy
    render json: @book.destroy
end 



private

def book_params
  params.require(:book).permit(:name, :genre)
end 

def set_book
  puts 'ALERT: set_book called!'
  @book = Book.find(params[:id])
end 

end
