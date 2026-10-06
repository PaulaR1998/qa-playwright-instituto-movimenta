import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir título da seção de colunistas',
  'Exibir lista de colunistas em cards',
  'Exibir informações corretas para o card de Flávia Leal na Home',
  'Exibir informações corretas para o card de Damaris Silva na Home',
  'Exibir informações corretas para o card de Juliana Maia na Home',
  'Exibir botão para visualizar todos os colunistas',
  'Navegar para a listagem de colunistas',
  'Navegar para o artigo completo ao clicar no card de colunista',
  'Garantir responsividade da seção de colunistas em desktop',
  'Garantir responsividade da seção de colunistas em mobile',
  'Garantir legibilidade e contraste da seção de colunistas',
];

test.describe('Instituto Movimenta Educação | Home | Seção de colunistas e artigos em destaque', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/home');
      await sitePage.expectText('Colunistas');
      if (scenario.includes('responsividade')) await sitePage.expectResponsive();
    });
  }
});
