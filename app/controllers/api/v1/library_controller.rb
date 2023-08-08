class Api::V1::LibraryController < ApplicationController

  def index
    books = BookFacade.get_books(params[:location])
    render json: BookSerializer.new(books)
  end

  private

end