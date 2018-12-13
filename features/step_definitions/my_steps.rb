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


Given("estoy pagina del juego") do
  visit '/'
  fill_in("palabraSecreta", :with => "banana")
  click_button("Jugar")  
end

Then("deberia ver estado {string}") do |text|
  last_response.body.should =~ /#{text}/m
end

When("completo la palabraSecreta {string}") do |string|
  string.each_char do |i|
    fill_in("letra", :with => i)
    click_button("Adivinar")
    end
end

Then("deberia mostrar el mensaje {string}") do |text|
  
  last_response.body.should =~ /#{text}/m
end