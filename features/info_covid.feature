# language:pt

@Informacoes_COVID_19
Funcionalidade: Diseases | Validar retorno da api sobre Covid_19
  Como uma aplicação de APIs
  Quero chamar o endpoint da API
  Para validar a funcionalidade do mesmo

  @#joao_balardin
  @disease_sh_docs_v3_covid_countries_contry.get
  Esquema do Cenário: Validar o endpoint disease_sh_docs_v3_covid_countries_contry.get
    Dado ter informações do "<pais>" solicitado no endpoint disease_sh_docs_v3_covid_countries_contry.get para o cenário
    Quando chamar o endpoint disease_sh_docs_v3_covid_countries_contry.get informando o "<pais>"
    Então validar o retorno do endpoint disease_sh_docs_v3_covid_countries_contry.get para o "<pais>" solicitado

    @ingress_testing
    Exemplos:
      | pais     |
      | Brazil   |
      | France   |

