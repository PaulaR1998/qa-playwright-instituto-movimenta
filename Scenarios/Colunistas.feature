Feature: Instituto Movimenta Educação | Home | Seção de colunistas e artigos em destaque

  Scenario: Exibir título da seção de colunistas
    Given que estou acessando o site do Instituto Movimenta Educação
    And estou na página inicial
    When a página inicial é carregada
    Then devo ver o título "COLUNISTAS" alinhado à esquerda na parte superior da seção
    And o título "COLUNISTAS" deve utilizar a mesma tipografia dos demais títulos de seções da home

  Scenario: Exibir lista de colunistas em cards
    When a página inicial é carregada
    Then devo ver pelo menos três cards de colunistas lado a lado
    And cada card deve conter:
      | elemento                    |
      | foto/avatar do(a) colunista |
      | nome do(a) colunista        |
      | data de publicação          |
      | título do artigo            |
      | trecho inicial do texto     |
      | botão ou ícone de ação      |

  Scenario: Exibir informações corretas para o card de Flávia Leal na Home
    When a página inicial é carregada
    Then no card da colunista "Flávia Leal" devo ver a data "04/09/2026"
    And devo ver o título do artigo "Quando a literatura e a arte se encontram"
    And devo ver um trecho sobre leitura de palavras e imagens para decifrar o mundo
    And devo ver o avatar ou foto na parte superior esquerda do card

  Scenario: Exibir informações corretas para o card de Damaris Silva na Home
    When a página inicial é carregada
    Then no card da colunista "Damaris Silva" devo ver a data "04/09/2026"
    And devo ver o título do artigo "Currículo oculto"
    And devo ver um trecho inicial sobre currículo como arena de produção cultural e disputa simbólica
    And devo ver o avatar ou foto na parte superior esquerda do card

  Scenario: Exibir informações corretas para o card de Juliana Maia na Home
    When a página inicial é carregada
    Then no card da colunista "Juliana Maia" devo ver a data "04/09/2026"
    And devo ver o título do artigo "Material didático não dá aula sozinho"
    And devo ver um trecho sobre o material didático como disparador de experiências
    And devo ver o avatar ou foto na parte superior esquerda do card

  Scenario: Exibir botão para visualizar todos os colunistas
    When a página inicial é carregada
    Then devo ver um botão com o rótulo "TODOS OS COLUNISTAS" na parte superior direita da seção
    And o botão "TODOS OS COLUNISTAS" deve estar visualmente destacado
    And o botão deve indicar claramente que leva para uma página com a lista completa de colunistas

  Scenario: Navegar para a listagem de colunistas
    Given que estou vendo a seção de colunistas na página inicial
    When eu clico no botão "TODOS OS COLUNISTAS"
    Then devo ser redirecionada para uma página dedicada à listagem de colunistas
    And essa página deve exibir uma lista ampliada de colunistas com seus respectivos artigos

  Scenario: Navegar para o artigo completo ao clicar no card de colunista
    Given que estou vendo a seção de colunistas na página inicial
    When eu clico em um card de colunista
    Then devo ser redirecionada para a página de artigo completo daquele colunista
    And a página de artigo deve apresentar, no mínimo:
      | informação              |
      | nome do(a) colunista    |
      | data de publicação      |
      | título do artigo       |
      | texto completo do artigo |

  Scenario: Garantir responsividade da seção de colunistas em desktop
    When acesso a página inicial em uma largura típica de desktop
    Then os três cards de colunistas devem aparecer alinhados horizontalmente com espaçamento consistente
    And o título "COLUNISTAS" deve permanecer alinhado à esquerda acima dos cards
    And o botão "TODOS OS COLUNISTAS" deve permanecer alinhado à direita acima dos cards

  Scenario: Garantir responsividade da seção de colunistas em mobile
    When acesso a página inicial em um dispositivo móvel com largura reduzida
    Then os cards de colunistas devem ser exibidos em coluna
    And o conteúdo de cada card deve permanecer legível sem rolagem horizontal
    And o botão "TODOS OS COLUNISTAS" deve permanecer visível e clicável

  Scenario: Garantir legibilidade e contraste da seção de colunistas
    When a página inicial é carregada
    Then o título "COLUNISTAS" deve apresentar contraste adequado em relação ao fundo branco
    And os textos dos cards devem ser legíveis em contraste com o fundo lilás dos cards
    And o ícone ou botão de seta de cada card deve indicar claramente a ação de ver mais ou ler artigo
