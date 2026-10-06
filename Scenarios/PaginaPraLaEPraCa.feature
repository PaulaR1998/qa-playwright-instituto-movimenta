Feature: Instituto Movimenta Educação | Página Pra Lá e Pra Cá | Temporadas, episódios e reprodução

  Scenario: Exibir breadcrumb de navegação na página Pra Lá e Pra Cá
    Given que estou acessando o site do Instituto Movimenta Educação
    And estou na página "Pra Lá e Pra Cá"
    When a página é carregada
    Then devo ver "Home / Conteúdos / Pra Lá e Pra Cá"
    And "Home" e "Conteúdos" devem ser clicáveis
    And "Pra Lá e Pra Cá" deve indicar a página atual

  Scenario: Exibir título e descrição da série Pra Lá e Pra Cá
    When a página "Pra Lá e Pra Cá" é carregada
    Then devo ver o título "Pra Lá e Pra Cá"
    And devo ver o logotipo da série
    And o texto deve informar que a série percorre cidades e apresenta pessoas e iniciativas que transformam pela educação

  Scenario: Exibir seletor de temporadas
    When a página "Pra Lá e Pra Cá" é carregada
    Then devo ver as opções "1ª TEMPORADA" e "2ª TEMPORADA"
    And "1ª TEMPORADA" deve estar selecionada por padrão
    And "2ª TEMPORADA" deve estar desativada ou não selecionada

  Scenario: Exibir descrição da temporada selecionada
    When a página "Pra Lá e Pra Cá" é carregada
    Then devo ver a descrição da temporada atual
    And o texto deve mencionar Recife, o Brasil, diferentes territórios e pessoas transformando vidas pela educação

  Scenario: Exibir lista de episódios da temporada selecionada
    When a página "Pra Lá e Pra Cá" é carregada
    Then devo ver uma grade de episódios da "1ª TEMPORADA"
    And cada card deve conter capa, identificação "Temporada 1 | Ep. X", título, descrição e ícone de play

  Scenario: Exibir informações corretas dos episódios da 1ª temporada
    When a página "Pra Lá e Pra Cá" é carregada
    Then devo ver os episódios 1 a 6 da temporada
    And os episódios devem ter o título "Transformando Vidas com Paixão e Inovação"
    And cada card deve mencionar o currículo como arena de produção cultural e disputa simbólica

  Scenario: Exibir paginação entre blocos de episódios
    When a página é carregada
    Then devo ver indicadores de página "1" e "2"
    And o indicador "1" deve estar marcado como atual

  Scenario: Navegar entre páginas de episódios pela paginação
    Given que estou vendo a lista de episódios da "1ª TEMPORADA"
    When eu clico no indicador "2"
    Then a grade deve ser atualizada com os episódios da página 2
    And "2" deve ser marcado como atual
    And devo permanecer na mesma temporada

  Scenario: Iniciar reprodução de episódio ao clicar na imagem ou ícone de play
    Given que estou vendo a lista de episódios da "1ª TEMPORADA"
    When eu clico na imagem ou no ícone de play de um episódio
    Then a reprodução deve ser iniciada
    And devo conseguir pausar, retomar e controlar o volume

  Scenario: Garantir consistência visual dos cards de episódios
    When a página "Pra Lá e Pra Cá" é carregada
    Then os cards devem aparecer sobre fundo bege claro com cantos arredondados
    And a identificação do episódio deve aparecer em destaque
    And título e descrição devem estar legíveis e espaçados

  Scenario: Garantir responsividade da página Pra Lá e Pra Cá em desktop
    When acesso a página em um dispositivo com largura típica de desktop
    Then o logotipo e o título devem aparecer no topo
    And o seletor deve exibir as temporadas lado a lado
    And a grade deve ter duas ou três colunas
    And a paginação deve ficar centralizada

  Scenario: Garantir responsividade da página Pra Lá e Pra Cá em mobile
    When acesso a página em um dispositivo móvel com largura reduzida
    Then título, logotipo e descrição devem se ajustar sem rolagem horizontal
    And os cards devem ser exibidos em uma coluna
    And a paginação deve permanecer visível e clicável

  Scenario: Garantir legibilidade e contraste na página Pra Lá e Pra Cá
    When a página é carregada
    Then todos os textos devem ter contraste adequado com o fundo claro
    And os textos dos cards devem ser legíveis no fundo bege
    And os ícones de play devem ser visíveis
