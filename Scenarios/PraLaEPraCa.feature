Feature: Instituto Movimenta Educação | Home | Seção Pra Lá e Pra Cá e chamada para vídeo

  Scenario: Exibir título da seção Pra Lá e Pra Cá
    Given que estou acessando o site do Instituto Movimenta Educação
    And estou na página inicial
    When a página inicial é carregada
    Then devo ver o título "PRA LÁ E PRA CÁ" em destaque na parte superior da seção
    And o título deve estar alinhado à esquerda e utilizar a mesma tipografia dos demais títulos de seções da home

  Scenario: Exibir card principal da série Pra Lá e Pra Cá
    When a página inicial é carregada
    Then devo ver um card amplo com fundo em tom amarelo claro e cantos arredondados
    And dentro desse card devo ver, à esquerda, uma imagem relacionada à série
    And sobre a imagem devo ver um ícone de play indicando que há conteúdo em vídeo
    And à direita da imagem devo ver o logotipo "Pra Lá e Pra Cá"
    And abaixo do logotipo devo ver o texto "1ª Temporada"

  Scenario: Exibir descrição textual da série Pra Lá e Pra Cá
    When a página inicial é carregada
    Then à direita da imagem devo ver um parágrafo com a descrição da série
    And o parágrafo deve informar que:
      | informação             | conteúdo                                                        |
      | apresentadora          | Luciana Ribeiro                                                |
      | foco da série          | histórias de pessoas que transformaram e superaram suas realidades |
      | meio de transformação  | através da educação                                           |
    And o texto deve estar completo e legível, sem truncamentos ou cortes

  Scenario: Exibir botão de ação ASSISTA AGORA
    When a página inicial é carregada
    Then devo ver um botão com o rótulo "ASSISTA AGORA" na parte inferior direita do card
    And o botão "ASSISTA AGORA" deve estar visualmente destacado em relação ao fundo
    And o botão deve indicar claramente que leva para o conteúdo em vídeo da série "Pra Lá e Pra Cá"

  Scenario: Navegar para o conteúdo da série ao clicar em ASSISTA AGORA
    Given que estou vendo a seção "Pra Lá e Pra Cá" na página inicial
    When eu clico no botão "ASSISTA AGORA"
    Then devo ser redirecionada para uma página ou player que exibe os episódios da série "Pra Lá e Pra Cá"
    And a página ou player de destino deve apresentar, no mínimo:
      | informação                              |
      | título da série                         |
      | identificação da temporada              |
      | lista de episódios ou pelo menos um episódio disponível |

  Scenario: Iniciar reprodução ao clicar no ícone de play sobre a imagem
    Given que estou vendo a imagem principal da série "Pra Lá e Pra Cá" na página inicial
    When eu clico no ícone de play sobre a imagem
    Then a reprodução do vídeo principal da série deve ser iniciada
    And a reprodução pode ocorrer em um modal de vídeo ou em uma nova página dedicada ao player
    And durante a reprodução devo conseguir pausar e retomar o vídeo normalmente

  Scenario: Garantir responsividade da seção Pra Lá e Pra Cá em desktop
    When acesso a página inicial em um dispositivo com largura de tela típica de desktop
    Then o card "Pra Lá e Pra Cá" deve aparecer com a imagem alinhada à esquerda e o bloco de texto/logotipo alinhado à direita
    And o título "PRA LÁ E PRA CÁ" deve permanecer visível acima do card sem sobrepor outros elementos da home
    And o botão "ASSISTA AGORA" deve manter alinhamento à direita e espaçamento consistente em relação ao texto descritivo

  Scenario: Garantir responsividade da seção Pra Lá e Pra Cá em mobile
    When acesso a página inicial em um dispositivo móvel com largura reduzida
    Then o card "Pra Lá e Pra Cá" deve se ajustar à largura da tela sem distorções
    And a imagem principal deve permanecer visível e proporcional
    And o logotipo "Pra Lá e Pra Cá", o texto "1ª Temporada" e a descrição da série devem ser legíveis sem rolagem horizontal
    And o botão "ASSISTA AGORA" deve permanecer acessível após rolagem vertical até o fim do card

  Scenario: Garantir legibilidade e contraste da seção Pra Lá e Pra Cá
    When a página inicial é carregada
    Then o texto "PRA LÁ E PRA CÁ" deve apresentar contraste adequado em relação ao fundo branco da página
    And os textos dentro do card devem ser legíveis com contraste adequado em relação ao fundo amarelo claro
    And o ícone de play sobre a imagem deve ser visível e distinguível sem interferir na visualização da foto
