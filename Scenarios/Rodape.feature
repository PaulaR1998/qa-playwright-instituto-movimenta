Feature: Instituto Movimenta Educação | Home | Rodapé, navegação e direitos autorais

  Background:
    Given que estou acessando o site do Instituto Movimenta Educação
    And estou na página inicial

  Scenario: Exibir logo e nome do Instituto no rodapé
    When eu rolo a página inicial até o final
    Then devo ver o logotipo do Instituto Movimenta Educação à esquerda do rodapé
    And ao lado do logotipo devo ver o texto "Instituto Movimenta Educação"
    And o logotipo e o nome devem estar sobre fundo escuro em alinhamento horizontal

  Scenario: Exibir colunas de navegação no rodapé
    When eu rolo a página inicial até o final
    Then devo ver três colunas de navegação com os títulos "Institucional", "Formação Continuada" e "Conteúdos"
    And abaixo de "Institucional" devo ver os links "Instituto", "Apoio e Parcerias" e "Contato"
    And abaixo de "Formação Continuada" devo ver o link "Cursos"
    And abaixo de "Conteúdos" devo ver os links "Pra Lá e Pra Cá", "Colunistas" e "Notícias"

  Scenario: Navegar para páginas a partir dos links do rodapé
    Given que estou vendo o rodapé da página inicial
    When eu clico em cada link das colunas de navegação
    Then "Instituto" deve levar à página institucional
    And "Apoio e Parcerias" deve levar à página de apoio e parcerias
    And "Contato" deve levar à página de contato
    And "Cursos" deve levar à página de listagem de cursos
    And "Pra Lá e Pra Cá" deve levar à página da série
    And "Colunistas" deve levar à página de listagem de colunistas
    And "Notícias" deve levar à página de listagem de notícias

  Scenario: Exibir linha divisória entre navegação e direitos autorais
    When eu rolo a página inicial até o final
    Then devo ver uma linha horizontal fina separando a navegação da área de direitos autorais
    And essa linha deve se estender pela largura útil do rodapé

  Scenario: Exibir texto de direitos autorais no rodapé
    When eu rolo a página inicial até o final
    Then devo ver o texto "© 2026 Instituto Movimenta. Todos os direitos reservados."
    And o texto deve estar alinhado conforme o layout definido sobre fundo escuro

  Scenario: Exibir versão do portal no rodapé
    When eu rolo a página inicial até o final
    Then devo ver o texto "Versão 1.1.0"
    And o texto deve indicar claramente a versão atual do portal

  Scenario: Garantir legibilidade e contraste no rodapé
    When a página inicial é carregada
    Then todos os textos do rodapé devem ser legíveis com contraste adequado em relação ao fundo escuro
    And os links devem ter estados visuais claros de hover e focus

  Scenario: Garantir responsividade do rodapé em desktop
    When acesso a página inicial em um dispositivo com largura típica de desktop
    Then o logotipo e o nome do instituto devem aparecer alinhados à esquerda
    And as colunas de navegação devem aparecer alinhadas horizontalmente à direita
    And a linha divisória e os direitos autorais devem aparecer abaixo

  Scenario: Garantir responsividade do rodapé em mobile
    When acesso a página inicial em um dispositivo móvel com largura reduzida
    Then o rodapé deve se ajustar sem rolagem horizontal
    And seus conteúdos devem permanecer legíveis e organizados em coluna
    And todos os links devem ser clicáveis com área de toque adequada
