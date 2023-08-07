class CountryService

  def conn 
    Faraday.new(url: 'https://restcountries.com/v3.1/') do |f|
      
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_countries
    get_url('all')
  end

  def get_country_by_name(name)
    get_url("name/#{name}")
  end

end