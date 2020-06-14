Dado('que estou na página de dynamic controls') do
    @control.go
end
  
Dado('que a {string} está ná pagina') do |a_checkbox| 
    expect(@control.a_check).to eql a_checkbox
 end
  
Quando('eu clicar no botão Remove') do 
    @control.rm
end

Então('deve exibir a mensagem {string}') do |gone|
    expect(@control.gone_message).to eql gone
end
  
Então('não deve exibir a checkbox') do
    expect(page).not_to have_selector "#checkbox"
end

#add_button

Dado('que a checkbox foi removida') do
    @control.rm
end
  
Quando('eu clicar no botão {string}') do |string|
    @control.add
end

Então('A checkbox deverá aparecer na página') do
    expect(page).to have_selector "#checkbox"
end