class BooksController < ApplicationController

  def index
    @books = books.all
  end

end
