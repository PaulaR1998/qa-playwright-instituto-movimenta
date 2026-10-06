Feature: Instituto Movimenta Educação | Página Notícias | Listagem, paginação e artigos

  Scenario: Exibir breadcrumb de navegação na página Notícias
    Given que estou acessando o site Instituto Movimenta Educação
    And estou na página "Notícias"
    When a página é carregada
    Then devo ver "Home / Notícias"
    And "Home" deve ser clicável
    And "Notícias" deve indicar a página atual

  Scenario: Exibir título principal da página Notícias
    When a página "Notícias" é carregada
    Then devo ver o título "Notícias"
    And o título deve usar a hierarquia visual do site

  Scenario: Exibir lista de notícias em cards na página Notícias
    When a página "Notícias" é carregada
    Then devo ver uma lista de cards em coluna
    And cada card deve conter imagem, título, trecho e data de publicação

  Scenario: Exibir informações corretas da notícia A Dança das Caveiras
    When a página "Notícias" é carregada
    Then o primeiro card deve ter o título "A Dança das Caveiras, de Paula Belmino, é selecionado para o PNLD Literário 2026"
    And deve exibir imagem relacionada à obra literária

  Scenario: Exibir informações corretas da notícia sobre educação e quadrinhos
    When a página "Notícias" é carregada
    Then o segundo card deve ter o título "Gelson Weschenfelder, o Filósofo dos Quadrinhos: quando super-heróis viram ferramenta de educação, ética e resiliência"
    And deve exibir imagem relacionada a quadrinhos e educação

  Scenario: Exibir informações corretas da notícia sobre sustentabilidade no sertão
    When a página "Notícias" é carregada
    Then o terceiro card deve ter o título "No Sertão de Pernambuco, professor transforma resíduos da mandioca em soluções sustentáveis e leva escola pública ao Prêmio Educador Nota 10"
    And deve exibir imagem relacionada à iniciativa sustentável

  Scenario: Exibir informações corretas da notícia sobre literatura infantil
    When a página "Notícias" é carregada
    Then o quarto card deve ter o título "Infância em verso: Paula Belmino lança \"Cadê Meu Boi\" e \"Bichonário Poético 2\""
    And deve exibir imagem relacionada às obras literárias

  Scenario: Exibir informações corretas da notícia sobre combate à desinformação
    When a página "Notícias" é carregada
    Then o quinto card deve ter o título "Game, jornalismo e educação: o projeto de Karoline Fernandes para vacinar crianças e adolescentes contra mentiras digitais"
    And deve exibir imagem relacionada ao projeto de educação midiática

  Scenario: Exibir controles de paginação da lista de notícias
    When a página "Notícias" é carregada
    Then devo ver paginação abaixo dos cards
    And devo ver o indicador "1" marcado como ativo
    And devo poder avançar quando houver mais notícias

  Scenario: Navegar para notícia completa ao clicar em um card
    Given que estou vendo a página "Notícias"
    When eu clico em um card de notícia
    Then devo ser redirecionada para a notícia completa
    And a página deve apresentar título, imagem, data e texto completo

  Scenario: Navegar entre páginas de notícias pela paginação
    Given que estou vendo a página "Notícias"
    When eu clico em uma página diferente de "1"
    Then a lista deve ser atualizada
    And a página selecionada deve ficar marcada como ativa

  Scenario: Garantir legibilidade e contraste da página Notícias
    When a página "Notícias" é carregada
    Then título, textos dos cards e datas devem contrastar com o fundo branco
    And os controles de paginação devem ter contraste suficiente

  Scenario: Garantir responsividade da página Notícias em desktop
    When acesso a página em um dispositivo com largura típica de desktop
    Then o título deve aparecer centralizado
    And os cards devem formar uma coluna centralizada com largura confortável
    And a paginação deve aparecer abaixo dos cards

  Scenario: Garantir responsividade da página Notícias em mobile
    When acesso a página em um dispositivo móvel com largura reduzida
    Then o conteúdo deve se ajustar sem rolagem horizontal
    And os cards devem ocupar a largura disponível em coluna única
    And textos e paginação devem permanecer legíveis e clicáveis
