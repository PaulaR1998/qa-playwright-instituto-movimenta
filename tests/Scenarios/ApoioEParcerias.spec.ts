import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir breadcrumb de navegação na página Apoio e Parcerias',
  'Exibir título principal e texto introdutório da página',
  'Exibir seção Nossas iniciativas com três cards principais',
  'Exibir card Cursos gratuitos',
  'Navegar para página de cursos a partir do card Cursos gratuitos',
  'Exibir card Pra Lá e Pra Cá na seção Nossas iniciativas',
  'Navegar para página da série a partir do card Pra Lá e Pra Cá',
  'Exibir card Apoio às escolas na seção Nossas iniciativas',
  'Navegar para detalhes das ações de apoio às escolas',
  'Exibir seção Faça parte desse movimento',
  'Exibir cards de participação Apoie o Instituto e Seja um parceiro',
  'Exibir card Apoie o Instituto',
  'Iniciar fluxo de apoio financeiro ao clicar em FAÇA UMA DOAÇÃO',
  'Exibir card Seja um parceiro',
  'Iniciar contato para parcerias ao clicar em FALE COM A GENTE',
  'Garantir legibilidade e contraste na página Apoio e Parcerias',
  'Garantir responsividade da página Apoio e Parcerias em desktop',
  'Garantir responsividade da página Apoio e Parcerias em mobile',
];

test.describe('Instituto Movimenta Educação | Página Apoio e Parcerias | Iniciativas, doações e parcerias', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/apoio-e-parcerias');
      await sitePage.expectText('Apoio e Parcerias');
      if (scenario.includes('responsividade')) await sitePage.expectResponsive();
    });
  }
});
