#language: pt

@planets
Funcionalidade: Planets

Enviar um GET para a API http://swapi.dev/api/planets/
Armazenar o valor do campo “count”
Enviar um novo GET para o mesmo endpoint passando um valor aleatório que seja superior ao armazenado
Validar o statuscode e a mensagem exibida

@get_planets
Cenário: Armazenar o valor do count e validar o status da requisição
Quando faço uma requisição GET para o servico planets
Então o serviço Planets deve responder com o status 200
E devo armazenar o valor do count


@get_planets
Cenário: Fazer uma nova requisição infromando um valor superior ao count armazenado e validar o statuscode e a mensagem
Quando realizar uma nova requisição GET para o mesmo endpoint
E informar um valor que seja superior ao armazenado
Então o serviço Planets deve responder com o status 200
E devo validar a mensagem