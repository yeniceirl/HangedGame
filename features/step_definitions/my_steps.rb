Given("visito la pagina principal") do
  visit '/'
end

When("ingreso la palabra {string} en el campo {string}") do |value, field|
  fill_in(field, :with => value)
end

When("presionar el boton {string}") do |name|
  click_button(name)
end

Then("deberia ver un mensaje {string}") do |text|
    last_response.body.should =~ /#{text}/m
end