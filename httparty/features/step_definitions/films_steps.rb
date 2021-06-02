Quando('faço uma requisição GET para o serviço films') do
  @resquest_films = films.get_films
end

Então('deve responder com o status {int}') do |status_code|
  expect(@resquest_films.code).to eq status_code
end

Então('devo armazenar todos os elementos title dentro de uma variável') do
  response = HTTParty.get('/films')
  puts response.body.films
end