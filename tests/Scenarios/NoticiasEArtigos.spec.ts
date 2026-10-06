import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir título da seção de notícias e artigos',
  'Exibir botão de ação TODAS AS NOTÍCIAS',
  'Exibir lista de notícias e artigos em cards na Home',
  'Exibir a notícia em destaque sobre educação e combate à desinformação',
  'Exibir a notícia em destaque sobre literatura infantil',
  'Navegar para listagem completa de notícias',
  'Navegar para notícia ou artigo completo ao clicar em um card',
  'Garantir responsividade da seção de notícias em desktop',
  'Garantir responsividade da seção de notícias em mobile',
  'Garantir legibilidade e contraste da seção de notícias',
];

test.describe('Instituto Movimenta Educação | Home | Seção de notícias e artigos em destaque', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/home');
      await sitePage.expectText('Notícias');
      if (scenario.includes('responsividade')) await sitePage.expectResponsive();
    });
  }
});
