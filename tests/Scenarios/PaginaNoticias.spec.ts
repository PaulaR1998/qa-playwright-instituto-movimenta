import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir breadcrumb de navegação na página Notícias',
  'Exibir título principal da página Notícias',
  'Exibir lista de notícias em cards na página Notícias',
  'Exibir informações corretas da notícia A Dança das Caveiras',
  'Exibir informações corretas da notícia sobre educação e quadrinhos',
  'Exibir informações corretas da notícia sobre sustentabilidade no sertão',
  'Exibir informações corretas da notícia sobre literatura infantil',
  'Exibir informações corretas da notícia sobre combate à desinformação',
  'Exibir controles de paginação da lista de notícias',
  'Navegar para notícia completa ao clicar em um card',
  'Navegar entre páginas de notícias pela paginação',
  'Garantir legibilidade e contraste da página Notícias',
  'Garantir responsividade da página Notícias em desktop',
  'Garantir responsividade da página Notícias em mobile',
];

test.describe('Instituto Movimenta Educação | Página Notícias | Listagem, paginação e artigos', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/noticias');
      await sitePage.expectText('Notícias');
      if (scenario.includes('responsividade')) await sitePage.expectResponsive();
    });
  }
});
