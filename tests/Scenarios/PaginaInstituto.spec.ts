import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir breadcrumb de navegação na página Instituto',
  'Exibir título principal da página Instituto',
  'Exibir bloco de texto Fortalecer quem educa',
  'Exibir bloco de texto Conhecimento que circula',
  'Exibir seção Quatro caminhos para movimentar a educação',
  'Exibir card de pilar Formação',
  'Exibir card de pilar Conexão',
  'Exibir card de pilar Impacto Social',
  'Exibir card de pilar Voz',
  'Garantir consistência visual dos quatro caminhos',
  'Garantir responsividade da página Instituto em desktop',
  'Garantir responsividade da página Instituto em mobile',
  'Garantir legibilidade e contraste na página Instituto',
];

test.describe('Instituto Movimenta Educação | Página Instituto | Conteúdo institucional e pilares de atuação', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/instituto');
      await sitePage.expectText('Instituto');
      if (scenario.includes('responsividade')) await sitePage.expectResponsive();
    });
  }
});
