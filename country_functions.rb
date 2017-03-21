def country_names(countries_data)
  names = []
  for country in countries_data
    names << country["name"]
  end
  return names
end

  def get_countries_by_continent(countries, region)
    countries_by_continent = []
    for country in countries
      countries_by_continent.push(country) if country["region"] == region
    end
    return countries_by_continent
  end

def get_continents(countries)
  continents = []
  for country in countries
    continents.push(country["region"])
  end
  return continents.uniq
end


def get_country_name_by_continent(countries, region)
  countries_by_continent = get_countries_by_continent(countries, region)
  country_names = []
  for country in countries_by_continent
   country_names.push(country["name"])
 end
 return country_names
end

def get_random_country(countries, region)
  country_names_by_continent = get_country_name_by_continent(countries, region)
  return country_names_by_continent.sample()
end
