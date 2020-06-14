Quando('selecionar o checkbox') do
    @control.check_true
end
  
Então('a checkbox deverá exibir marcado') do
    page.has_field? 'checkbox', disabled: false
end

Dado('e o checkbox está marcada') do
    @control.check_true
end
  
Quando('desmarcar') do
    @control.check_false
end
  
Então('o checkbox deverá exibir desmarcado') do
    page.has_field? 'checkbox', disabled: true
end

Dado('a checkbox foi adicionada') do
    expect(page).to have_selector "#checkbox"
end
  
Quando('marcar') do
    @control.check_true
end