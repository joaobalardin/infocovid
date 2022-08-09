def get_infos_covid(pais)
  url = 'https://disease.sh/v3/covid-19/countries/'

  response = RestClient.get "#{url}#{pais}?yesterday=yesterday&strict=true"

  JSON.parse(response.body)
end