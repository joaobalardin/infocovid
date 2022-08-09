Dado('ter informações do {string} solicitado no endpoint disease_sh_docs_v3_covid_countries_contry.get para o cenário') do |pais|
  endpoint = OpenStruct.new
  endpoint.query = OpenStruct.new
  endpoint.query['country '] = pais
  endpoint.query['country '] = pais

  @disease_sh_docs_v3_covid_countries_contry_get = endpoint
end

Quando('chamar o endpoint disease_sh_docs_v3_covid_countries_contry.get informando o {string}') do |pais|
  @disease_sh_docs_v3_covid_countries_contry_get.response = get_infos_covid(pais)
end

Então('validar o retorno do endpoint disease_sh_docs_v3_covid_countries_contry.get para o {string} solicitado') do |pais|
  aggregate_failures do
    endpoint = @disease_sh_docs_v3_covid_countries_contry_get
    expect(endpoint.error).to be_nil
    expect(endpoint.response['updated']).to be_kind_of(Numeric)
    expect(endpoint.response['country']).to eql(pais)
    expect(endpoint.response['countryInfo']['_id']).to be_kind_of(Numeric)
    expect(endpoint.response['countryInfo']['iso2']).to be_kind_of(String)
    expect(endpoint.response['countryInfo']['iso3']).to be_kind_of(String)
    expect(endpoint.response['countryInfo']['lat']).to be_kind_of(Numeric)
    expect(endpoint.response['countryInfo']['long']).to be_kind_of(Numeric)
    expect(endpoint.response['countryInfo']['flag']).to be_kind_of(String)
    expect(endpoint.response['cases']).to be_kind_of(Numeric)
    expect(endpoint.response['todayCases']).to be_kind_of(Numeric)
    expect(endpoint.response['deaths']).to be_kind_of(Numeric)
    expect(endpoint.response['todayDeaths']).to be_kind_of(Numeric)
    expect(endpoint.response['recovered']).to be_kind_of(Numeric)
    expect(endpoint.response['todayRecovered']).to be_kind_of(Numeric)
    expect(endpoint.response['active']).to be_kind_of(Numeric)
    expect(endpoint.response['critical']).to be_kind_of(Numeric)
    expect(endpoint.response['casesPerOneMillion']).to be_kind_of(Numeric)
    expect(endpoint.response['deathsPerOneMillion']).to be_kind_of(Numeric)
    expect(endpoint.response['tests']).to be_kind_of(Numeric)
    expect(endpoint.response['testsPerOneMillion']).to be_kind_of(Numeric)
    expect(endpoint.response['population']).to be_kind_of(Numeric)
    expect(endpoint.response['continent']).to be_kind_of(String)
    expect(endpoint.response['oneCasePerPeople']).to be_kind_of(Numeric)
    expect(endpoint.response['oneDeathPerPeople']).to be_kind_of(Numeric)
    expect(endpoint.response['oneTestPerPeople']).to be_kind_of(Numeric)
    expect(endpoint.response['activePerOneMillion']).to be_kind_of(Numeric)
    expect(endpoint.response['recoveredPerOneMillion']).to be_kind_of(Numeric)
    expect(endpoint.response['criticalPerOneMillion']).to be_kind_of(Numeric)
  end
end
