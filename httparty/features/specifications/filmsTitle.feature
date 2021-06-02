#language: pt

@films
Funcionalidade: Title

Enviar um GET para a API https://swapi.dev/api/films/
Amazenar o valor do campo “title” de cada elemento da estrutura “results” em variável
Validar o statuscode (Sucesso) da resposta da requisição.

@get_films
Cenário: Armazenar todos os elementos title da estrutura results
Quando faço uma requisição GET para o serviço films
Então deve responder com o status 200
Então devo armazenar todos os elementos title dentro de uma variável
