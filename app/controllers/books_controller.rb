class BooksController < ApplicationController

  def index
    @books = books.all

    respond_to do |format|
      format.html do
        render :index
      end

      format.text do
        render :index
      end
      
      format.csv do
        render plain: Book.generate_csv(@books)
      end

      format.json do
        render json: @books
      end
    end
  end

end
