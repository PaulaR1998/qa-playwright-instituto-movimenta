import { expect, test } from '../../fixtures/test';
import { SitePage } from '../../pages/site.page';

test.describe('Instituto Movimenta Educação | Fluxos transversais | Entrada, busca, cookies e políticas', () => {
  test('Redirecionar a URL raiz para a Home', async ({ page }) => {
    await page.goto('/');
    await expect(page).toHaveURL(/\/home(?:[/?#]|$)/);
    await expect(page).toHaveTitle('Instituto Movimenta');
  });

  test('Exibir o banner de consentimento de cookies', async ({ page }) => {
    const sitePage = new SitePage(page);
    await sitePage.open('/home');
    await expect(page.getByText(/O nosso portal utiliza cookies/i)).toBeVisible();
    for (const name of ['Aceitar cookies', 'Rejeitar cookies', 'Gerenciar cookies']) {
      await expect(page.getByRole('button', { name, exact: true })).toBeVisible();
    }
    await expect(page.getByRole('link', { name: 'Política de Privacidade' })).toBeVisible();
    await expect(page.getByRole('link', { name: 'Política de Cookies' })).toBeVisible();
  });

  test('Aceitar todos os cookies', async ({ page }) => {
    await page.goto('/home');
    await page.getByRole('button', { name: 'Aceitar cookies', exact: true }).click();
    await expect(page.getByText(/O nosso portal utiliza cookies/i)).toBeHidden();
  });

  test('Rejeitar cookies não essenciais', async ({ page }) => {
    await page.goto('/home');
    await page.getByRole('button', { name: 'Rejeitar cookies', exact: true }).click();
    await expect(page.getByText(/O nosso portal utiliza cookies/i)).toBeHidden();
  });

  test('Configurar preferências de cookies', async ({ page }) => {
    await page.goto('/home');
    await page.getByRole('button', { name: 'Gerenciar cookies', exact: true }).click();
    const dialog = page.getByRole('dialog');
    await expect(dialog.getByRole('heading', { name: 'Gerenciar cookies' })).toBeVisible();
    const switches = dialog.getByRole('switch');
    await expect(switches).toHaveCount(4);
    await expect(switches.nth(0)).toBeChecked();
    await expect(switches.nth(0)).toBeDisabled();
    for (const index of [1, 2, 3]) await expect(switches.nth(index)).toBeVisible();
    for (const name of ['Aceitar Cookies', 'Rejeitar Cookies', 'Salvar Ajustes']) {
      await expect(page.getByRole('button', { name, exact: true })).toBeVisible();
    }
  });

  test('Salvar ajustes personalizados de cookies', async ({ page }) => {
    await page.goto('/home');
    await page.getByRole('button', { name: 'Gerenciar cookies', exact: true }).click();
    const dialog = page.getByRole('dialog');
    await dialog.getByRole('switch').nth(1).click();
    await page.getByRole('button', { name: 'Salvar Ajustes', exact: true }).click();
    await expect(dialog).toBeHidden();
  });

  test('Pesquisar conteúdo pelo cabeçalho', async ({ page }) => {
    await page.goto('/home');
    await page.getByRole('button', { name: 'Buscar', exact: true }).click();
    await page.getByRole('combobox').fill('currículo');
    await page.getByRole('combobox').press('Enter');
    await expect(page).toHaveURL(/\/pesquisar\/curriculo(?:[/?#]|$)/);
    await expect(page.getByRole('heading', { name: 'Resultado de busca' })).toBeVisible();
    await expect(page.getByText(/itens encontrados/i)).toBeVisible();
  });

  test('Acessar a Política de Privacidade', async ({ page }) => {
    await page.goto('/home');
    await page.getByRole('link', { name: 'Política de Privacidade' }).click();
    await expect(page).toHaveURL(/\/politica-privacidade(?:[/?#]|$)/);
    await expect(page.getByRole('heading', { name: 'Política de Privacidade' })).toBeVisible();
  });

  test('Acessar a Política de Cookies', async ({ page }) => {
    await page.goto('/home');
    await page.getByRole('link', { name: 'Política de Cookies' }).click();
    await expect(page).toHaveURL(/\/politica-cookies(?:[/?#]|$)/);
    await expect(page.locator('main').first()).toBeVisible();
  });
});
