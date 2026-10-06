import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir breadcrumb de navegação na página Pra Lá e Pra Cá',
  'Exibir título e descrição da série Pra Lá e Pra Cá',
  'Exibir seletor de temporadas',
  'Exibir descrição da temporada selecionada',
  'Exibir lista de episódios da temporada selecionada',
  'Exibir informações corretas dos episódios da 1ª temporada',
  'Exibir paginação entre blocos de episódios',
  'Navegar entre páginas de episódios pela paginação',
  'Iniciar reprodução de episódio ao clicar na imagem ou ícone de play',
  'Garantir consistência visual dos cards de episódios',
  'Garantir responsividade da página Pra Lá e Pra Cá em desktop',
  'Garantir responsividade da página Pra Lá e Pra Cá em mobile',
  'Garantir legibilidade e contraste na página Pra Lá e Pra Cá',
];

test.describe('Instituto Movimenta Educação | Página Pra Lá e Pra Cá | Temporadas, episódios e reprodução', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/pra-la-pra-ca');
      await sitePage.expectText('Pra Lá e Pra Cá');
      if (scenario.includes('responsividade')) await sitePage.expectResponsive();
    });
  }
});
