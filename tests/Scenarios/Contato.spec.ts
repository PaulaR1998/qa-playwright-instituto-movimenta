import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir breadcrumb de navegação na página Contato',
  'Exibir título principal da página Contato',
  'Exibir formulário de envio de mensagem',
  'Preencher campos obrigatórios com exemplo de dados',
  'Exibir campo de ocupação como opcional com lista de seleção',
  'Validar envio apenas com campos obrigatórios preenchidos',
  'Impedir envio quando campos obrigatórios estão vazios',
  'Validar formato de e-mail antes de enviar',
  'Exibir seção de redes sociais',
  'Navegar para redes sociais ao clicar nos links',
  'Garantir legibilidade e contraste na página Contato',
  'Garantir responsividade da página Contato em desktop',
  'Garantir responsividade da página Contato em mobile',
];

test.describe('Instituto Movimenta Educação | Página Contato | Formulário, validações e redes sociais', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/contato');
      await sitePage.expectText('Contato');
      if (scenario.includes('responsividade')) await sitePage.expectResponsive();
    });
  }
});
