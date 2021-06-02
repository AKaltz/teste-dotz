### PROJETO (WebService/API)

Criar um projeto de automação com as ferramentas citadas (Cucumber + Ruby + Httparty).
O projeto consiste em criar dois cenários:7
- Enviar um GET para a API https://swapi.dev/api/films/ e armazenar o valor do campo “title” de cada elemento da estrutura “results” em variável e Validar o statuscode (Sucesso) da resposta da requisição.
- Enviar um GET para a API http://swapi.dev/api/planets/ armazenar o valor do campo “count”, enviar um novo GET para o mesmo endpoint passando um valor aleatório que seja superior ao armazenado. Validar o statuscode e a mensagem exibida.


Diferencial: Aplicação de page object e YAML.

Desejável: Validar o resultado das chamadas com testes do postman.

Requerido: Subir o projeto no github. O versionamento do projeto faz parte da avaliação. Projetos enviados por outros meios não serão avaliados.

Dica: Mesmo que não consiga finalizar 100% do projeto. Nos envie mesmo assim, pois avaliamos diversos itens, exemplo: lógica, estrutura, conhecimentos nas ferramentas. Há bastante material na internet que pode ser usado como base.

### Run Cucumber
- GET films
```
cucumber -t@get_films
```
- GET planets
```
cucumber -t@get_planets
```

### Configurações do Cypress
- Instalar dependecias: 
```
npm install or yarn
```
- Run Cypress inline:
```
npm run cypress:run
```
- Run Cypress interface:
```
npm run cypress:open
```
