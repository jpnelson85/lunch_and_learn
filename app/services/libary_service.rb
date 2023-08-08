class LibraryService

  def conn 
    Faraday.new(url: 'http://openlibrary.org') do |f|
      f.headers['Content-Type'] = 'application/json'
    end
  end

  def city_book_search(city)
    response = conn.get("/api/v1/book_search?location=#{city}&quantity=5")
    JSON.parse(response.body, symbolize_names: true)
  end
end