Feature: Instituto Movimenta Educação | Página Contato | Formulário, validações e redes sociais

  Scenario: Exibir breadcrumb de navegação na página Contato
    Given que estou acessando o site Instituto Movimenta Educação
    And estou na página "Contato"
    When a página é carregada
    Then devo ver "Home / Contato"
    And "Home" deve ser clicável
    And "Contato" deve indicar a página atual

  Scenario: Exibir título principal da página Contato
    When a página "Contato" é carregada
    Then devo ver o título "Contato"
    And o título deve usar a hierarquia visual do site

  Scenario: Exibir formulário de envio de mensagem
    When a página "Contato" é carregada
    Then devo ver um formulário sobre fundo lilás claro com bordas arredondadas
    And devo ver o texto "Envie sua mensagem para nós"
    And devo ver os campos obrigatórios "Seu nome", "Seu e-mail" e "Sua mensagem"
    And devo ver o campo opcional "Qual sua ocupação (opcional)"
    And devo ver o botão "ENVIAR"

  Scenario: Preencher campos obrigatórios com exemplo de dados
    When a página "Contato" é carregada
    Then o campo "Seu nome" deve aceitar "José Alberto Tavares"
    And o campo "Seu e-mail" deve aceitar um e-mail válido
    And o campo "Sua mensagem" deve aceitar texto livre

  Scenario: Exibir campo de ocupação como opcional com lista de seleção
    When a página "Contato" é carregada
    Then o campo de ocupação deve ser um dropdown opcional
    And deve apresentar opções como professor, gestor, estudante e outro

  Scenario: Validar envio apenas com campos obrigatórios preenchidos
    Given que estou na página "Contato"
    And preencho nome, e-mail válido e mensagem
    And deixo a ocupação sem seleção
    When clico em "ENVIAR"
    Then o formulário deve ser enviado com sucesso
    And devo ver uma confirmação de envio

  Scenario: Impedir envio quando campos obrigatórios estão vazios
    Given que estou na página "Contato"
    And não preencho um ou mais campos obrigatórios
    When clico em "ENVIAR"
    Then o formulário não deve ser enviado
    And devo ver erros ou destaque nos campos vazios

  Scenario: Validar formato de e-mail antes de enviar
    Given que estou na página "Contato"
    And preencho nome e mensagem
    And preencho o e-mail com um valor inválido
    When clico em "ENVIAR"
    Then o formulário não deve ser enviado
    And devo ver mensagem de e-mail inválido
    And o campo deve ser destacado para correção

  Scenario: Exibir seção de redes sociais
    When a página "Contato" é carregada
    Then devo ver o título "Redes sociais"
    And devo ver Instagram, Facebook, YouTube e TikTok com o identificador "@institutomovimentaeducacao/"
    And cada rede deve apresentar seu ícone

  Scenario: Navegar para redes sociais ao clicar nos links
    Given que estou vendo a seção de redes sociais
    When eu clico nos links de Instagram, Facebook, YouTube e TikTok
    Then devo ser redirecionada aos respectivos perfis do Instituto Movimenta Educação

  Scenario: Garantir legibilidade e contraste na página Contato
    When a página "Contato" é carregada
    Then título e formulário devem contrastar com o fundo branco
    And rótulos e textos devem contrastar com o fundo lilás
    And as redes sociais devem ser legíveis
    And o botão "ENVIAR" deve ter contraste suficiente

  Scenario: Garantir responsividade da página Contato em desktop
    When acesso a página "Contato" em um dispositivo com largura típica de desktop
    Then o formulário deve aparecer centralizado
    And as redes sociais devem aparecer abaixo com ícones e textos organizados
    And o rodapé deve permanecer visível após rolagem

  Scenario: Garantir responsividade da página Contato em mobile
    When acesso a página "Contato" em um dispositivo móvel com largura reduzida
    Then título e formulário devem se ajustar sem rolagem horizontal
    And os campos devem ocupar a largura disponível
    And o botão "ENVIAR" deve permanecer visível e clicável
    And as redes sociais devem aparecer em coluna e permanecer legíveis
