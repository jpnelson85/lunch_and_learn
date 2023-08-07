class CountryFacade
  def self.get_country_by_name(name)
    if name.nil? || name.empty?
      country_names = CountryService.new.get_countries.map do |country|
        country[:name][:common]
      end
      name = country_names.sample
    else 
      name
    end
  end
end