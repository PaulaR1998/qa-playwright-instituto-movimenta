Feature: Instituto Movimenta Educação | Página Instituto | Conteúdo institucional e pilares de atuação

  Scenario: Exibir breadcrumb de navegação na página Instituto
    Given que estou acessando o site do Instituto Movimenta Educação
    And estou na página "Instituto"
    When a página "Instituto" é carregada
    Then devo ver um breadcrumb indicando "Home / Instituto"
    And "Home" deve ser clicável e levar para a página inicial
    And "Instituto" deve indicar a página atual sem ser clicável

  Scenario: Exibir título principal da página Instituto
    When a página "Instituto" é carregada
    Then devo ver o título "Instituto" no topo do conteúdo principal
    And o título deve utilizar a hierarquia visual dos demais títulos do site

  Scenario: Exibir bloco de texto Fortalecer quem educa
    When a página "Instituto" é carregada
    Then devo ver o subtítulo "Fortalecer quem educa. Transformar quem aprende."
    And devo ver texto sobre a trajetória do Grupo Movimenta e sua atuação em educação pública
    And o texto deve mencionar "Formação", "Conexão", "Impacto Social" e "Voz"
    And deve mencionar que boas práticas e oportunidades de desenvolvimento devem circular

  Scenario: Exibir bloco de texto Conhecimento que circula
    When a página "Instituto" é carregada
    Then devo ver o subtítulo "Conhecimento que circula. Educação que se transforma."
    And devo ver texto que apresente esse subtítulo como propósito do Instituto
    And o texto deve mencionar "Formação", "Conexão", "Impacto Social" e "Voz"
    And deve enfatizar a circulação de oportunidades, práticas e conhecimentos

  Scenario: Exibir seção Quatro caminhos para movimentar a educação
    When a página "Instituto" é carregada
    Then devo ver o título "Quatro caminhos para movimentar a educação"
    And devo ver texto introdutório explicando os quatro pilares da atuação do Instituto

  Scenario: Exibir card de pilar Formação
    When a página "Instituto" é carregada
    Then devo ver um card com o título "Formação"
    And devo ver o subtítulo "Conhecimento que fortalece a prática."
    And o texto deve mencionar cursos, formações, conteúdos, recursos e desenvolvimento contínuo de profissionais da educação

  Scenario: Exibir card de pilar Conexão
    When a página "Instituto" é carregada
    Then devo ver um card com o título "Conexão"
    And devo ver o subtítulo "Educação se fortalece quando aproxima pessoas."
    And o texto deve mencionar redes de apoio, espaços de troca, encontros e vínculos entre educadores

  Scenario: Exibir card de pilar Impacto Social
    When a página "Instituto" é carregada
    Then devo ver um card com o título "Impacto Social"
    And devo ver o subtítulo "Mais educação, mais possibilidades."
    And o texto deve mencionar ações abertas à comunidade e redução de desigualdades educacionais

  Scenario: Exibir card de pilar Voz
    When a página "Instituto" é carregada
    Then devo ver um card com o título "Voz"
    And devo ver o subtítulo "Toda voz mobiliza, quando encontra um compartilhamento."
    And o texto deve mencionar conteúdos digitais, artigos e experiências de educadores

  Scenario: Garantir consistência visual dos quatro caminhos
    When a página "Instituto" é carregada
    Then os cards Formação, Conexão, Impacto Social e Voz devem aparecer em grade
    And cada card deve utilizar ícone ou símbolo visual
    And os textos devem estar alinhados e legíveis em contraste com o fundo

  Scenario: Garantir responsividade da página Instituto em desktop
    When acesso a página "Instituto" em um dispositivo com largura típica de desktop
    Then os blocos institucionais devem aparecer centralizados
    And os quatro cards devem aparecer em grade com espaçamento consistente
    And o rodapé deve permanecer visível após rolagem

  Scenario: Garantir responsividade da página Instituto em mobile
    When acesso a página "Instituto" em um dispositivo móvel com largura reduzida
    Then os blocos institucionais devem se ajustar sem rolagem horizontal
    And os quatro cards devem aparecer em coluna
    And os textos devem permanecer legíveis

  Scenario: Garantir legibilidade e contraste na página Instituto
    When a página "Instituto" é carregada
    Then todos os textos devem apresentar contraste adequado com o fundo branco
    And os textos dos cards coloridos devem ser legíveis em suas cores de fundo
