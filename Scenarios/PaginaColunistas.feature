Feature: Instituto Movimenta Educação | Página Colunistas | Atualizações, perfis e artigos

  Scenario: Exibir breadcrumb de navegação na página Colunistas
    Given que estou acessando o site do Instituto Movimenta Educação
    And estou na página "Colunistas"
    When a página é carregada
    Then devo ver "Home / Imprensa / Colunistas"
    And "Home" e "Imprensa" devem ser clicáveis
    And "Colunistas" deve indicar a página atual

  Scenario: Exibir título e descrição institucional da página Colunistas
    When a página "Colunistas" é carregada
    Then devo ver o título "Colunistas"
    And devo ver texto informando que especialistas trazem opiniões sobre educação no Brasil e no mundo

  Scenario: Exibir seção de Últimas atualizações
    When a página "Colunistas" é carregada
    Then devo ver o subtítulo "Últimas atualizações"
    And devo ver artigos recentes com foto, título, trecho e data de publicação

  Scenario: Exibir informações atuais do artigo Quando a literatura e a arte se encontram
    When a página "Colunistas" é carregada
    Then devo ver o artigo "Quando a literatura e a arte se encontram"
    And devo ver a foto da autora à esquerda
    And o trecho deve mencionar leitura de palavras e imagens para decifrar o mundo
    And devo ver a data "4 de setembro de 2026"

  Scenario: Exibir informações do artigo Currículo oculto
    When a página "Colunistas" é carregada
    Then devo ver o artigo "Currículo oculto"
    And devo ver a foto da autora à esquerda
    And o trecho deve abordar currículo como arena de produção cultural e disputa simbólica
    And devo ver a data "4 de setembro de 2026"

  Scenario: Exibir informações atuais do artigo Material didático não dá aula sozinho
    When a página "Colunistas" é carregada
    Then devo ver o artigo "Material didático não dá aula sozinho"
    And devo ver a foto da autora à esquerda
    And o trecho deve mencionar o material didático como disparador de experiências
    And devo ver a data "4 de setembro de 2026"

  Scenario: Navegar para artigo completo ao clicar em uma última atualização
    Given que estou vendo a seção "Últimas atualizações" na página "Colunistas"
    When eu clico em um título ou área clicável de uma atualização
    Then devo ser redirecionada para o artigo completo
    And a página deve apresentar nome, data, título e texto completo

  Scenario: Exibir seção de colunistas fixos
    When a página "Colunistas" é carregada
    Then devo ver o subtítulo "Fixos"
    And devo ver cards com foto, nome, cargo e ação
    And os cards devem incluir "Damaris Silva", "Luciana Nobre" e "Juliana Maia"

  Scenario: Exibir informações corretas dos colunistas fixos
    When a página "Colunistas" é carregada
    Then Damaris Silva deve aparecer como Diretora de Produtos e Serviços Pedagógicos no Grupo Movimenta
    And Luciana Nobre deve aparecer como Gerente Pedagógica no Grupo Movimenta
    And Juliana Maia deve aparecer como Gerente de conteúdo no Grupo Movimenta

  Scenario: Exibir seção de colunistas convidados
    When a página "Colunistas" é carregada
    Then devo ver o subtítulo "Convidados"
    And devo ver cards com foto, nome, cargo e ação
    And devo ver o card da convidada "Flávia Leal"

  Scenario: Exibir informações corretas da colunista convidada Flávia Leal
    When a página "Colunistas" é carregada
    Then no card "Flávia Leal" devo ver "Editora de linguagens no Grupo Movimenta"
    And o card deve aparecer sobre fundo lilás com cantos arredondados

  Scenario: Navegar para perfil ou lista de artigos ao clicar em card de colunista
    Given que estou vendo as seções "Fixos" e "Convidados"
    When eu clico em um card de colunista
    Then devo ser redirecionada para perfil ou lista de artigos
    And a página deve apresentar nome, mini bio ou cargo e lista de artigos

  Scenario: Garantir legibilidade e contraste da página Colunistas
    When a página "Colunistas" é carregada
    Then títulos e textos institucionais devem contrastar com o fundo branco
    And atualizações e cards devem permanecer legíveis
    And os botões de seta devem indicar a ação de ver mais

  Scenario: Garantir responsividade da página Colunistas em desktop
    When acesso a página em um dispositivo com largura típica de desktop
    Then as últimas atualizações devem aparecer centralizadas
    And os cards fixos devem aparecer alinhados horizontalmente
    And o card convidado deve aparecer abaixo dos fixos
    And o rodapé deve permanecer visível após rolagem

  Scenario: Garantir responsividade da página Colunistas em mobile
    When acesso a página em um dispositivo móvel com largura reduzida
    Then o conteúdo deve se ajustar sem rolagem horizontal
    And atualizações, cards fixos e convidados devem aparecer em coluna
    And textos e ícones devem permanecer legíveis e clicáveis
