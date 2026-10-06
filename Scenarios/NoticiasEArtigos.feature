Feature: Instituto Movimenta Educação | Home | Seção de notícias e artigos em destaque

  Scenario: Exibir título da seção de notícias e artigos
    Given que estou acessando o site do Instituto Movimenta Educação
    And estou na página inicial
    When a página inicial é carregada
    Then devo ver o título "NOTÍCIAS" alinhado à esquerda na parte superior da seção
    And o título "NOTÍCIAS" deve utilizar a mesma tipografia dos demais títulos de seções da home

  Scenario: Exibir botão de ação TODAS AS NOTÍCIAS
    When a página inicial é carregada
    Then devo ver um botão com o rótulo "TODAS AS NOTÍCIAS" alinhado à direita na parte superior da seção
    And o botão "TODAS AS NOTÍCIAS" deve estar visualmente destacado
    And o botão deve indicar claramente que leva para a listagem completa de notícias e artigos

  Scenario: Exibir lista de notícias e artigos em cards na Home
    When a página inicial é carregada
    Then devo ver pelo menos três cards de notícias lado a lado
    And cada card deve conter:
      | elemento                 |
      | imagem de destaque       |
      | título da notícia/artigo |
      | trecho inicial do texto  |

  Scenario: Exibir a notícia em destaque sobre educação e combate à desinformação
    When a página inicial é carregada
    Then no primeiro card devo ver o título "Game, jornalismo e educação: o projeto de Karoline Fernandes para vacinar crianças e adolescentes contra mentiras digitais"
    And devo ver um trecho sobre comunicação, sala de aula e combate à desinformação

  Scenario: Exibir a notícia em destaque sobre literatura infantil
    When a página inicial é carregada
    Then no segundo card devo ver o título "A Dança das Caveiras, de Paula Belmino, é selecionado para o PNLD Literário 2026"
    And devo ver um trecho sobre literatura infantil e Educação Infantil

  Scenario: Navegar para listagem completa de notícias
    Given que estou vendo a seção de notícias e artigos na página inicial
    When eu clico no botão "TODAS AS NOTÍCIAS"
    Then devo ser redirecionada para uma página dedicada à listagem de notícias e artigos
    And essa página deve exibir uma lista ampliada de notícias com títulos e resumos

  Scenario: Navegar para notícia ou artigo completo ao clicar em um card
    Given que estou vendo a seção de notícias e artigos na página inicial
    When eu clico em um card de notícia
    Then devo ser redirecionada para a página de notícia ou artigo completo
    And a página de notícia deve apresentar, no mínimo:
      | informação              |
      | título da notícia/artigo |
      | imagem de destaque       |
      | texto completo           |

  Scenario: Garantir responsividade da seção de notícias em desktop
    When acesso a página inicial em uma largura típica de desktop
    Then os três cards de notícias devem aparecer alinhados horizontalmente com espaçamento consistente
    And o título "NOTÍCIAS" deve permanecer alinhado à esquerda acima dos cards
    And o botão "TODAS AS NOTÍCIAS" deve permanecer alinhado à direita acima dos cards

  Scenario: Garantir responsividade da seção de notícias em mobile
    When acesso a página inicial em um dispositivo móvel com largura reduzida
    Then os cards de notícias devem ser exibidos em coluna
    And o conteúdo de cada card deve permanecer legível sem rolagem horizontal
    And o botão "TODAS AS NOTÍCIAS" deve permanecer visível e clicável

  Scenario: Garantir legibilidade e contraste da seção de notícias
    When a página inicial é carregada
    Then o título "NOTÍCIAS E ARTIGOS" deve apresentar contraste adequado em relação ao fundo
    And os textos dos cards devem ser legíveis em contraste com o fundo branco dos cards
    And o botão "TODAS AS NOTÍCIAS" deve manter contraste suficiente entre texto, borda e fundo
