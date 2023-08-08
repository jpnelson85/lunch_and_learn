class LibraryFacade

  def get_books(country)
    country = CountryFacade.get_country_by_name(country)
    books = LibraryService.new.get_books(country)
    books.map do |book|
      Book.new(book)
    end
  end
end