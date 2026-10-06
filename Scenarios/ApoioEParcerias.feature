Feature: Instituto Movimenta Educação | Página Apoio e Parcerias | Iniciativas, doações e parcerias

  Scenario: Exibir breadcrumb de navegação na página Apoio e Parcerias
    Given que estou acessando o site do Instituto Movimenta Educação
    And estou na página "Apoio e Parcerias"
    When a página é carregada
    Then devo ver "Home / Apoio e Parcerias"
    And "Home" deve ser clicável
    And "Apoio e Parcerias" deve indicar a página atual

  Scenario: Exibir título principal e texto introdutório da página
    When a página "Apoio e Parcerias" é carregada
    Then devo ver o título "Juntos, podemos movimentar ainda mais a educação."
    And devo ver texto sobre ampliar o acesso ao conhecimento e fortalecer a educação pública
    And os parágrafos devem mencionar ações, apoio, parcerias e participação

  Scenario: Exibir seção Nossas iniciativas com três cards principais
    When a página "Apoio e Parcerias" é carregada
    Then devo ver o subtítulo "Nossas iniciativas"
    And devo ver cards "Cursos gratuitos", "Pra Lá e Pra Cá" e "Apoio às escolas"
    And cada card deve ter descrição e ação

  Scenario: Exibir card Cursos gratuitos
    When a página "Apoio e Parcerias" é carregada
    Then o card "Cursos gratuitos" deve conter "Formação especial para a educação acontece."
    And deve explicar que oferece cursos gratuitos para fortalecer a prática docente
    And devo ver o botão "VER CURSOS"

  Scenario: Navegar para página de cursos a partir do card Cursos gratuitos
    Given que estou vendo a seção "Nossas iniciativas"
    When eu clico em "VER CURSOS"
    Then devo ser redirecionada para a página "Cursos"

  Scenario: Exibir card Pra Lá e Pra Cá na seção Nossas iniciativas
    When a página "Apoio e Parcerias" é carregada
    Then o card deve conter "Histórias de quem faz a educação acontecer."
    And deve descrever a série e suas iniciativas educativas
    And devo ver o botão "ASSISTIR A SÉRIE"

  Scenario: Navegar para página da série a partir do card Pra Lá e Pra Cá
    Given que estou vendo a seção "Nossas iniciativas"
    When eu clico em "ASSISTIR A SÉRIE"
    Then devo ser redirecionada para a página "Pra Lá e Pra Cá"

  Scenario: Exibir card Apoio às escolas na seção Nossas iniciativas
    When a página "Apoio e Parcerias" é carregada
    Then o card deve conter "Recursos que ampliam possibilidades."
    And deve descrever projetos e ações para redes, escolas e equipes pedagógicas
    And devo ver o botão "CONHECER AS AÇÕES"

  Scenario: Navegar para detalhes das ações de apoio às escolas
    Given que estou vendo a seção "Nossas iniciativas"
    When eu clico em "CONHECER AS AÇÕES"
    Then devo ser redirecionada para uma página ou seção de detalhamento
    And devem ser apresentadas ações, projetos e público-alvo

  Scenario: Exibir seção Faça parte desse movimento
    When a página "Apoio e Parcerias" é carregada
    Then devo ver o subtítulo "Faça parte desse movimento"
    And devo ver texto informando que pessoas, empresas e instituições podem apoiar
    And o texto deve mencionar recursos, conhecimento e formação para educadores e escolas

  Scenario: Exibir cards de participação Apoie o Instituto e Seja um parceiro
    When a página "Apoio e Parcerias" é carregada
    Then devo ver os cards "Apoie o Instituto" e "Seja um parceiro"
    And cada card deve conter descrição e ação

  Scenario: Exibir card Apoie o Instituto
    When a página "Apoio e Parcerias" é carregada
    Then o card deve conter "Sua contribuição ajuda a fortalecer iniciativas"
    And devo ver o botão "FAÇA UMA DOAÇÃO"

  Scenario: Iniciar fluxo de apoio financeiro ao clicar em FAÇA UMA DOAÇÃO
    Given que estou vendo o card "Apoie o Instituto"
    When eu clico em "FAÇA UMA DOAÇÃO"
    Then devo ser redirecionada para um fluxo de doação
    And o destino deve identificar o Instituto e apresentar formas de contribuição

  Scenario: Exibir card Seja um parceiro
    When a página "Apoio e Parcerias" é carregada
    Then o card deve explicar que empresas e instituições podem construir iniciativas conjuntas
    And devo ver o botão "FALE COM A GENTE"

  Scenario: Iniciar contato para parcerias ao clicar em FALE COM A GENTE
    Given que estou vendo o card "Seja um parceiro"
    When eu clico em "FALE COM A GENTE"
    Then devo ser redirecionada para contato ou canal específico de parcerias
    And o destino deve permitir enviar informações sobre o interesse em parceria

  Scenario: Garantir legibilidade e contraste na página Apoio e Parcerias
    When a página é carregada
    Then textos e descrições devem contrastar com o fundo branco
    And os textos dos cards devem ser legíveis em suas cores de fundo
    And os botões devem ter contraste suficiente

  Scenario: Garantir responsividade da página Apoio e Parcerias em desktop
    When acesso a página em um dispositivo com largura típica de desktop
    Then o título e o texto introdutório devem aparecer centralizados
    And os três cards de iniciativas devem aparecer lado a lado
    And os dois cards de participação devem aparecer lado a lado
    And o rodapé deve permanecer visível após rolagem

  Scenario: Garantir responsividade da página Apoio e Parcerias em mobile
    When acesso a página em um dispositivo móvel com largura reduzida
    Then o conteúdo deve se ajustar sem rolagem horizontal
    And os cards devem ser exibidos em coluna
    And todos os botões devem permanecer visíveis e clicáveis
