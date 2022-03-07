class Api::AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :update, :destroy]
#get request 'api/authors'
#will return all authors as json
def index
        render json: Author.all
end

def show
    render json: @Author
end

def create
  #create author in memor with sanitized params
  author = Author.new(author_params)
  #try to save to DB
  if(author.save)
    render json: author
  else 
    render json: {errors: author.errors.full_messages}, status: 422
  end
end
 
def update
  if(@author.update(author_params))
    render json: @author
  else 
    render json: {errors: @author.errors.full_messages}, status: 422
  end
end

def destroy
    render json: @author.destroy
end 



private

def author_params
  params.require(:author).permit(:name, :genre)
end 

def set_author
  puts 'ALERT: set_author called!'
  @author = Author.find(params[:id])
end 


end 
