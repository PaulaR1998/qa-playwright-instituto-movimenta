Feature: Instituto Movimenta Educação | Página Cursos | Catálogo, inscrição e paginação

  Scenario: Exibir breadcrumb de navegação na página Cursos
    Given que estou acessando o site do Instituto Movimenta Educação
    And estou na página "Cursos"
    When a página "Cursos" é carregada
    Then devo ver um breadcrumb indicando "Home / Cursos"
    And "Home" deve ser clicável e levar para a página inicial
    And "Cursos" deve indicar a página atual

  Scenario: Exibir título e descrição institucional da página de cursos
    When a página "Cursos" é carregada
    Then devo ver o título "Cursos"
    And devo ver parágrafo informando que os cursos são gratuitos e oferecem formação continuada
    And o texto deve mencionar professores da educação básica, prática docente, teoria e prática

  Scenario: Exibir lista de cursos em cards com informações principais
    When a página "Cursos" é carregada
    Then devo ver cards organizados horizontalmente
    And cada card deve conter imagem ou avatar do autor, título, carga horária, status e ação

  Scenario: Exibir informações corretas do curso Pensamento Científico Aplicado ao Ensino
    When a página "Cursos" é carregada
    Then no card "Pensamento Científico Aplicado ao Ensino" devo ver 40 horas, status "Gratuito" e botão "INSCREVA-SE"
    And devo ver o avatar do autor
    And o botão deve ter cor sólida e texto legível

  Scenario: Exibir informações corretas do curso Recursos e Metodologias para uma Educação Inclusiva
    When a página "Cursos" é carregada
    Then no card "Recursos e Metodologias para uma Educação Inclusiva" devo ver 45 horas, status "Gratuito" e botão "INSCREVA-SE"
    And devo ver o avatar da autora
    And o botão deve ter cor sólida e texto legível

  Scenario: Exibir informações corretas do curso Resolução de Problemas Matemáticos
    When a página "Cursos" é carregada
    Then no card "Resolução de Problemas Matemáticos" devo ver 40 horas, status "Gratuito" e botão "EM BREVE"
    And o botão deve ter borda destacada e fundo transparente
    And o card deve indicar que o curso ainda não está disponível

  Scenario: Exibir paginação da lista de cursos
    When a página "Cursos" é carregada
    Then devo ver controles de paginação abaixo dos cards
    And devo ver o indicador de página atual "1" marcado como ativo

  Scenario: Navegar para detalhes do curso ao clicar no card
    Given que estou vendo a página "Cursos"
    When eu clico em um card de curso
    Then devo ser redirecionada para a página de detalhes
    And a página deve apresentar título, carga horária, status, descrição e certificação

  Scenario: Iniciar fluxo de inscrição ao clicar em INSCREVA-SE
    Given que estou vendo a página "Cursos"
    When eu clico no botão "INSCREVA-SE" de um curso disponível
    Then o fluxo de inscrição deve ser iniciado
    And devo ser redirecionada para a matrícula
    And a página deve identificar o curso e permitir concluir a inscrição

  Scenario: Impedir inscrição em cursos Em breve
    Given que estou vendo a página "Cursos"
    When eu clico no botão "EM BREVE" do curso "Resolução de problemas de matemática"
    Then não devo ser levada para um fluxo de inscrição completo
    And devo ver indicação de indisponibilidade
    And o sistema não deve registrar matrícula

  Scenario: Garantir legibilidade e contraste dos cards de cursos
    When a página "Cursos" é carregada
    Then títulos, carga horária e status devem ser legíveis no fundo lilás
    And os botões devem apresentar contraste adequado
    And o texto institucional deve ser legível no fundo branco

  Scenario: Garantir responsividade da página de cursos em desktop
    When acesso a página "Cursos" em um dispositivo com largura típica de desktop
    Then o título e o texto institucional devem aparecer centralizados
    And os cards devem aparecer alinhados horizontalmente
    And a paginação deve aparecer abaixo dos cards

  Scenario: Garantir responsividade da página de cursos em mobile
    When acesso a página "Cursos" em um dispositivo móvel com largura reduzida
    Then o conteúdo deve se ajustar sem rolagem horizontal
    And os cards devem ser exibidos em coluna
    And os botões devem permanecer visíveis e clicáveis
    And a paginação deve permanecer acessível
