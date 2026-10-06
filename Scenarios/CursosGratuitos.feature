Feature: Instituto Movimenta Educação | Home | Seção de cursos gratuitos e novos cursos

  Scenario: Exibir a seção de Cursos Gratuitos com título e descrição institucional
    When a página inicial é carregada
    Then devo ver o título "CURSOS GRATUITOS"
    And devo ver o subtítulo "Formações continuadas com certificação para professores"
    And devo ver um texto descritivo explicando que os cursos gratuitos oferecem oportunidades de formação para educadores e pessoas interessadas em ampliar seus conhecimentos sobre educação

  Scenario: Exibir lista de novos cursos com informações principais
    When a página inicial é carregada
    Then devo ver um bloco à direita com o título "NOVOS CURSOS:"
    And dentro desse bloco devo ver cards de cursos com:
      | campo                         |
      | título do curso               |
      | nome do autor(a)              |
      | carga horária                 |
      | indicação "Gratuito" ou equivalente |
    And os cards visíveis devem incluir, no mínimo:
      | título                                      |
      | Recursos e Metodologias para uma Educação Inclusiva |
      | Pensamento Científico Aplicado ao Ensino    |
      | Resolução de Problemas de Matemática       |

  Scenario: Exibir status especial para curso "Resolução de Problemas Matemáticos"
    When a página inicial é carregada
    Then no card do curso "Resolução de Problemas Matemáticos" devo ver a carga horária "40 horas"
    And devo ver a indicação de status como "Em breve"
    And a indicação "Em breve" deve estar visualmente diferenciada

  Scenario: Exibir informações de carga horária e gratuidade dos cursos
    When a página inicial é carregada
    Then no card de "Recursos e Metodologias para uma Educação Inclusiva" devo ver:
      | campo         | valor     |
      | carga horária | 40 horas  |
      | status        | Gratuito  |
    And no card de "Pensamento Científico Aplicado ao Ensino" devo ver:
      | campo         | valor     |
      | carga horária | 40 horas  |
      | status        | Gratuito  |
    And no card de "Resolução de Problemas de Matemática" devo ver:
      | campo         | valor     |
      | carga horária | 40 horas  |
      | status        | Em breve  |

  Scenario: Exibir botão de ação para ver mais cursos gratuitos
    When a página inicial é carregada
    Then abaixo da lista de novos cursos devo ver um botão ou link com o rótulo "CONFIRA CURSOS"
    And o botão "CONFIRA CURSOS" deve estar visualmente destacado em relação ao fundo do bloco de novos cursos
    And o botão "CONFIRA CURSOS" deve indicar claramente que leva para a listagem completa de cursos gratuitos

  Scenario: Navegar para listagem de cursos ao clicar em "CONFIRA CURSOS"
    Given que estou vendo a seção de Cursos Gratuitos na página inicial
    When eu clico no botão "CONFIRA CURSOS"
    Then devo ser redirecionada para uma página de listagem de cursos
    And essa página de destino deve exibir uma lista de cursos compatível com a seção apresentada na home

  Scenario: Navegar para detalhes de curso ao clicar no card
    Given que estou vendo a seção de Cursos Gratuitos na página inicial
    When eu clico em um card de curso dentro da área de "NOVOS CURSOS:"
    Then devo ser redirecionada para a página de detalhes do curso selecionado
    And a página de detalhes deve exibir, no mínimo:
      | informação                    |
      | título do curso               |
      | nome do autor(a)              |
      | carga horária                 |
      | status (Gratuito, Em breve)   |
      | descrição ou ementa           |

  Scenario: Garantir consistência visual da seção em desktop
    When acesso a página inicial em um dispositivo com largura típica de desktop
    Then o bloco de "CURSOS GRATUITOS" deve aparecer alinhado à esquerda com título, subtítulo e texto descritivo
    And o bloco de "NOVOS CURSOS:" deve aparecer à direita, com cards sobre um fundo em tom lilás
    And os cards de cursos devem estar alinhados verticalmente com espaçamento consistente
    And o botão "CONFIRA CURSOS" deve aparecer na parte inferior do bloco de "NOVOS CURSOS:" alinhado horizontalmente com os cards

  Scenario: Garantir legibilidade e contraste da seção de cursos
    When a página inicial é carregada
    Then o título "CURSOS GRATUITOS" e o subtítulo "Formações continuadas com certificação para professores" devem apresentar contraste adequado em relação ao fundo branco
    And os textos internos dos cards de "NOVOS CURSOS:" devem ser legíveis em contraste com o fundo lilás
    And os ícones e textos de tempo devem ser visualmente distinguíveis e não confusos com o rótulo "Gratuito"
