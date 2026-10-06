Feature: Instituto Movimenta Educação | Fluxos transversais | Entrada, busca, cookies e políticas

  Scenario: Redirecionar a URL raiz para a Home
    Given que acesso a URL raiz "https://institutomovimentaeducacao.com.br"
    When o portal termina de carregar
    Then devo ser redirecionado para a página "/home"
    And devo ver o título da página "Instituto Movimenta"

  Scenario: Exibir o banner de consentimento de cookies
    Given que acesso a página do Instituto Movimenta Educação sem preferências de cookies salvas
    When a página termina de carregar
    Then devo ver a mensagem sobre o uso de cookies
    And devo ver os botões "Aceitar cookies", "Rejeitar cookies" e "Gerenciar cookies"
    And devo ver os links "Política de Privacidade" e "Política de Cookies"

  Scenario: Aceitar todos os cookies
    Given que o banner de consentimento de cookies está visível
    When clico em "Aceitar cookies"
    Then o banner de consentimento deve deixar de ser exibido
    And devo continuar podendo navegar pelo portal

  Scenario: Rejeitar cookies não essenciais
    Given que o banner de consentimento de cookies está visível
    When clico em "Rejeitar cookies"
    Then o banner de consentimento deve deixar de ser exibido
    And os cookies essenciais devem continuar habilitados

  Scenario: Configurar preferências de cookies
    Given que o banner de consentimento de cookies está visível
    When clico em "Gerenciar cookies"
    Then devo ver o diálogo "Gerenciar cookies"
    And o switch "Essenciais (sempre ativos)" deve estar marcado e desabilitado
    And devo ver os switches "Analíticos", "Funcionais" e "Marketing"
    And devo ver os botões "Aceitar Cookies", "Rejeitar Cookies" e "Salvar Ajustes"

  Scenario: Salvar ajustes personalizados de cookies
    Given que o diálogo "Gerenciar cookies" está aberto
    When altero uma preferência não essencial
    And clico em "Salvar Ajustes"
    Then o diálogo de cookies deve deixar de ser exibido
    And as preferências selecionadas devem ser mantidas para a sessão

  Scenario: Pesquisar conteúdo pelo cabeçalho
    Given que estou em uma página do Instituto Movimenta Educação
    When clico no botão "Buscar"
    And informo "currículo" no campo de busca
    And confirmo a pesquisa
    Then devo ser redirecionado para "/pesquisar/curriculo"
    And devo ver o título "Resultado de busca"
    And devo ver a quantidade de resultados encontrados

  Scenario: Acessar a Política de Privacidade
    Given que estou no banner de consentimento de cookies
    When clico no link "Política de Privacidade"
    Then devo ser redirecionado para "/politica-privacidade"
    And devo ver o título "Política de Privacidade"

  Scenario: Acessar a Política de Cookies
    Given que estou no banner de consentimento de cookies
    When clico no link "Política de Cookies"
    Then devo ser redirecionado para "/politica-cookies"
    And a página de política de cookies deve ser carregada
