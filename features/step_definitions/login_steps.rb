Dado('que o eu esteja na página de login') do
  @login.go
end

Quando('eu faço login com {string} e {string}') do |username, password|
  @login.with(username, password)
end

Quando('clico em entrar') do
  @login.sign_in_button
end

Então('ver a seguinte mensagem:') do |expect_message|
  expect(@secure.logged_user).to eql expect_message
end

#login_error
Então('devo ver a mensagem de erro {string}') do |expect_error|
  expect(@login.alert).to start_with expect_error
end