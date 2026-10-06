import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir logo e nome do Instituto no rodapé',
  'Exibir colunas de navegação no rodapé',
  'Navegar para páginas a partir dos links do rodapé',
  'Exibir linha divisória entre navegação e direitos autorais',
  'Exibir texto de direitos autorais no rodapé',
  'Exibir versão do portal no rodapé',
  'Garantir legibilidade e contraste no rodapé',
  'Garantir responsividade do rodapé em desktop',
  'Garantir responsividade do rodapé em mobile',
];

test.describe('Instituto Movimenta Educação | Home | Rodapé, navegação e direitos autorais', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/home');
      await sitePage.expectFooterText('Instituto Movimenta');
      if (scenario.includes('responsividade')) {
        await sitePage.expectResponsive();
      }
    });
  }
});
