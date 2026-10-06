import { expect, test } from '../../fixtures/test';

test.describe('Instituto Movimenta Educação | Home | Hero institucional e navegação principal', () => {
  test('Scenario 01 - deve exibir hero com mensagem institucional e botão de ação', async ({ homePage }) => {
    await homePage.open();
    await homePage.expectHero();
  });

test('Scenario 02 - deve garantir acessibilidade mínima do hero', async ({ homePage }) => {
    await homePage.open();
    await expect(homePage.heroMessage).toBeVisible();
    await expect(homePage.instituteLink).toHaveAccessibleName(/Conheça o Instituto/);
    await expect(homePage.heroImage).toHaveAttribute('alt', /.+/);
  });

  test('Scenario 03 - deve navegar para a apresentação institucional', async ({ homePage }) => {
    await homePage.open();
    await homePage.expectInstituteDestination();
  });

  test.describe('Scenario 04 - hero responsivo em desktop', () => {
    test.use({ viewport: { width: 1440, height: 900 } });

    test('deve exibir imagem centralizada, texto e botão sobre o hero', async ({ homePage }) => {
      await homePage.open();
      await homePage.expectResponsiveHero();
    });
  });

  test.describe('Scenario 05 - hero responsivo em mobile', () => {
    test.use({ viewport: { width: 390, height: 844 } });

    test('deve manter texto e botão visíveis sem rolagem horizontal', async ({ homePage }) => {
      await homePage.open();
      await homePage.expectResponsiveHero();
    });
  });

  test('Scenario 06 - deve exibir os itens principais de navegação junto ao hero', async ({ homePage }) => {
    await homePage.open();
    await homePage.expectMainNavigation();
  });
});
