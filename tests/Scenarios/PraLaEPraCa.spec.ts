import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir título da seção Pra Lá e Pra Cá',
  'Exibir card principal da série Pra Lá e Pra Cá',
  'Exibir descrição textual da série Pra Lá e Pra Cá',
  'Exibir botão de ação ASSISTA AGORA',
  'Navegar para o conteúdo da série ao clicar em ASSISTA AGORA',
  'Iniciar reprodução ao clicar no ícone de play sobre a imagem',
  'Garantir responsividade da seção Pra Lá e Pra Cá em desktop',
  'Garantir responsividade da seção Pra Lá e Pra Cá em mobile',
  'Garantir legibilidade e contraste da seção Pra Lá e Pra Cá',
];

test.describe('Instituto Movimenta Educação | Home | Seção Pra Lá e Pra Cá e chamada para vídeo', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/home');
      await sitePage.expectText('Pra Lá e Pra Cá');
      if (scenario.includes('responsividade')) await sitePage.expectResponsive();
    });
  }
});
