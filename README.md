
# Dojo - QA - 

## Utiliza

Ruby, Capybara, Selenium Webdriver, geckodriver, chromedriver, ffi, rake, report_builder, rspec, Json e site_prism
## Capybara
Ajuda você a testar aplicativos da web simulando como um usuário real interage com o mesmo.

## Selenium Webdriver
É um frame de automação de navegador e seu ecossistema.

## Cucumber
É uma ferramenta que suporta Behavior-Driven Development (BDD) - um processo de desenvolvimento de software que visa melhorar a qualidade do software e reduzir os custos de manutenção.
Executa especificações escritas em linguagem simples e produz relatórios indicando se o software se comporta de acordo com a especificação ou não.
Reduz o esforço para manter as especificações de requisitos, testes e documentação em sincronia, podendo ser uma única fonte de documentação para todos na equipe.

## FFi, rake, json
Dependencias para o report builder
ffi - sem documentação - bibliotecas para apoiar no projeto.
rake - documentação sem tradução - Rake is a Make-like program implemented in Ruby. Tasks and dependencies are specified in standard Ruby syntax.
json - documentação sem tradução -A pure ruby variant, that relies on the iconv and the stringscan extensions, which are both part of the ruby standard library.

## Report-builder
Ruby gem to merge Cucumber JSON reports and build mobile-friendly HTML Test Report, JSON report and retry file.

## Como clonar e instalar as gems do projeto
1. Abrir o terminal e acessar a pasta onde deseja clonar o projeto
2. Digitar: git clone https://"SeuUsuario"@bitbucket.org/fe_cezario/dojo_fcamara.git
3. Após clonar o projeto, abrir o vscode e adicionar o projeto
4. Abrir o terminal cmd dentro do vs code e digitar: bundle install (caso não possua a gem bundle instalada, digite o comando: gem install bundler), e ai rode novamente o comando: bundle install

## Execução
Para executar os cenários:
`cucumber features/{name_file_feature.feature}`

## Contribuição Bitbucket
1. Fork it!
2. Criar um branch: `git checkout -b my-new-feature`
3. Adicionar as todas as mudanças `git add .` 
3. Comitar suas mudanças: `git commit -m 'Add some feature'`
4. Enviar para o Bitbucket: `git push origin my-new-feature`
5. Abrir um PR :D

