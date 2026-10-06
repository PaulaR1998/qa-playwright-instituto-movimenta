import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir breadcrumb de navegação na página Colunistas',
  'Exibir título e descrição institucional da página Colunistas',
  'Exibir seção de Últimas atualizações',
  'Exibir informações atuais do artigo Quando a literatura e a arte se encontram',
  'Exibir informações do artigo Currículo oculto',
  'Exibir informações atuais do artigo Material didático não dá aula sozinho',
  'Navegar para artigo completo ao clicar em uma última atualização',
  'Exibir seção de colunistas fixos',
  'Exibir informações corretas dos colunistas fixos',
  'Exibir seção de colunistas convidados',
  'Exibir informações corretas da colunista convidada Flávia Leal',
  'Navegar para perfil ou lista de artigos ao clicar em card de colunista',
  'Garantir legibilidade e contraste da página Colunistas',
  'Garantir responsividade da página Colunistas em desktop',
  'Garantir responsividade da página Colunistas em mobile',
];

test.describe('Instituto Movimenta Educação | Página Colunistas | Atualizações, perfis e artigos', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/colunista');
      await sitePage.expectText('Colunistas');
      if (scenario.includes('responsividade')) await sitePage.expectResponsive();
    });
  }
});
