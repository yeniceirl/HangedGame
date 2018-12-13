Given("estoy pagina del juego") do
  visit '/'
  fill_in("palabraSecreta", :with => "banana")
  click_button("Jugar")  
end

Then("deberia ver estado {string}") do |text|
  last_response.body.should =~ /#{text}/m
end