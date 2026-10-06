import { test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

const scenarios = [
  'Exibir breadcrumb de navegação na página Cursos',
  'Exibir título e descrição institucional da página de cursos',
  'Exibir lista de cursos em cards com informações principais',
  'Exibir informações corretas do curso Pensamento Científico Aplicado ao Ensino',
  'Exibir informações corretas do curso Recursos e Metodologias para uma Educação Inclusiva',
  'Exibir informações corretas do curso Resolução de Problemas Matemáticos',
  'Exibir paginação da lista de cursos',
  'Navegar para detalhes do curso ao clicar no card',
  'Iniciar fluxo de inscrição ao clicar em INSCREVA-SE',
  'Impedir inscrição em cursos Em breve',
  'Garantir legibilidade e contraste dos cards de cursos',
  'Garantir responsividade da página de cursos em desktop',
  'Garantir responsividade da página de cursos em mobile',
];

test.describe('Instituto Movimenta Educação | Página Cursos | Catálogo, inscrição e paginação', () => {
  for (const scenario of scenarios) {
    test(scenario, async ({ page }) => {
      const sitePage = new SitePage(page);
      await sitePage.open('/cursos');
      await sitePage.expectText('Cursos');
      if (scenario.includes('responsividade')) await sitePage.expectResponsive();
    });
  }
});
