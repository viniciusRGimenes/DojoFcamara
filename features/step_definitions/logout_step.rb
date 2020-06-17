Quando('clicar no botão logout') do
    @secure.sign_out_link
end
  
Então('deverá exibir {string}') do |expect_sucess|
    expect(@login.success).to start_with expect_sucess
end