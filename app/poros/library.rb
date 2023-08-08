class Library
  attr_reader :title,
              :image,
              :url,
              :country,
              :id

  def initialize(data, city)
    @id = nil
    @type = "books"
    @attributes = { "city": city,
                    "total_books_found": data[:totalItems],
                    "books": data[:items]
  
  }
  end
end