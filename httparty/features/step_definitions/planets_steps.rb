When('faço uma requisição GET para o serviço planets') do
  @resquest_planets = planets.get_planets
end

Then('o serviço Planets deve responder com o status {int}') do |status_code|
    expect(@resquest_planets.code).to eq status_code
end

Then('devo armazenar o valor do count') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('realizar uma nova requisição GET para o mesmo endpoint') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('informar um valor que seja superior ao armazenado') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('devo validar a mensagem') do
  pending # Write code here that turns the phrase above into concrete actions
end