import { expect, type Page } from '@playwright/test';

export class SitePage {
  constructor(readonly page: Page) {}

  async open(route: string): Promise<void> {
    await this.page.goto(route, { waitUntil: 'domcontentloaded' });
    await expect(this.page.locator('body')).toBeVisible();
    await expect(this.page).toHaveURL(new RegExp(`${route.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')}(?:[/?#]|$)`));
  }

  async expectText(text: string): Promise<void> {
    const matches = this.page.getByText(text, { exact: false });
    for (let index = 0; index < await matches.count(); index += 1) {
      if (await matches.nth(index).isVisible()) return;
    }
    await expect(matches.first()).toBeVisible();
  }

  async expectFooterText(text: string): Promise<void> {
    const footer = this.page.locator('footer');
    await expect(footer).toBeVisible();
    await footer.scrollIntoViewIfNeeded();
    await expect(footer).toContainText(text);
  }

  async expectHeading(text: string): Promise<void> {
    await expect(this.page.getByRole('heading', { name: text, exact: false }).first()).toBeVisible();
  }

  async expectResponsive(): Promise<void> {
    const viewport = this.page.viewportSize();
    expect(viewport).not.toBeNull();
    const scrollWidth = await this.page.locator('body').evaluate((body) => body.scrollWidth);
    expect(scrollWidth).toBeLessThanOrEqual(viewport!.width);
  }
}
