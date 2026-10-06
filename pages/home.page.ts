import { expect, type Locator, type Page } from '@playwright/test';

export class HomePage {
  readonly page: Page;
  readonly heroImage: Locator;
  readonly heroMessage: Locator;
  readonly currentHeroCopy: Locator;
  readonly instituteLink: Locator;
  readonly searchButton: Locator;
  readonly logo: Locator;
  readonly coursesSectionTitle: Locator;
  readonly coursesSubtitle: Locator;
  readonly coursesDescription: Locator;
  readonly newCoursesTitle: Locator;
  readonly seeCoursesButton: Locator;

  constructor(page: Page) {
    this.page = page;
    this.heroImage = page.getByAltText('Professora sorrindo em destaque no banner do Instituto Movimenta');
    this.heroMessage = page.locator('main p').filter({
      hasText: 'Formação continuada, conhecimento e recursos para fortalecer professores',
    }).first();
    this.currentHeroCopy = page.getByText(/Formação continuada, conhecimento e recursos para fortalecer professores/);
    this.instituteLink = page.locator('a[href="/instituto"]', { hasText: 'Conheça o Instituto' });
    this.searchButton = page.getByRole('button', { name: 'Buscar', exact: true }).first();
    this.logo = page.locator('header #data-home-logo').first();
    this.coursesSectionTitle = page.getByRole('heading', { name: 'Cursos gratuitos', exact: true });
    this.coursesSubtitle = page.getByRole('heading', { name: 'Formações continuadas com certificação para professores', exact: true });
    this.coursesDescription = page.getByText(/Os Cursos Gratuitos oferecem oportunidades de formação/);
    this.newCoursesTitle = page.getByText('Novos cursos:', { exact: true });
    this.seeCoursesButton = page.locator('a[href="/cursos"]', { hasText: 'CONFIRA CURSOS' });
  }

  async open(): Promise<void> {
    await this.page.goto('/home', { waitUntil: 'domcontentloaded' });
    await expect(this.page).toHaveURL(/\/home(?:[/?#]|$)/);
    await expect(this.page.locator('body')).toBeVisible();
  }

  async expectHero(): Promise<void> {
    await expect(this.heroImage).toBeVisible();
    await expect(this.heroMessage).toBeVisible();
    await expect(this.instituteLink).toBeVisible();
    await expect(this.instituteLink).toHaveAttribute('href', '/instituto');
  }

  async expectInstituteDestination(): Promise<void> {
    await this.instituteLink.click();
    await expect(this.page).toHaveURL(/\/instituto(?:[/?#]|$)/);
    for (const section of ['Formação', 'Conexão', 'Impacto Social', 'Voz']) {
      await expect(this.page.getByRole('heading', { name: section, exact: true })).toBeVisible();
    }
  }

  async expectResponsiveHero(): Promise<void> {
    await expect(this.heroImage).toBeVisible();
    await expect(this.heroMessage).toBeVisible();
    await expect(this.instituteLink).toBeVisible();
    const viewport = this.page.viewportSize();
    expect(viewport).not.toBeNull();
    expect(await this.page.locator('body').evaluate((body) => body.scrollWidth)).toBeLessThanOrEqual(viewport!.width);
    await expect(this.heroImage).toHaveCSS('object-fit', 'cover');
  }

  async expectMainNavigation(): Promise<void> {
    const header = this.page.locator('header');
    for (const item of ['Instituto', 'Cursos', 'Pra Lá e Pra Cá', 'Colunistas', 'Notícias', 'Apoio e Parcerias', 'Contato']) {
      await expect(header.getByRole('link', { name: item, exact: true })).toBeVisible();
    }
    await expect(this.logo).toBeVisible();
    await expect(this.searchButton).toBeVisible();
  }

  courseCard(title: string): Locator {
    const titlePattern = title.startsWith('Resolução de Problemas')
      ? /Resolução de Problemas (?:de )?Matemát(?:ica|icos)/i
      : title;
    return this.page.locator('span[title]').filter({ hasText: titlePattern }).first().locator('..');
  }

  async expectCoursesSection(): Promise<void> {
    await expect(this.coursesSectionTitle).toBeVisible();
    await expect(this.coursesSubtitle).toBeVisible();
    await expect(this.coursesDescription).toBeVisible();
  }

  async expectNewCoursesBlock(): Promise<void> {
    await expect(this.newCoursesTitle).toBeVisible();
    for (const title of [
      'Recursos e Metodologias para uma Educação Inclusiva',
      'Pensamento Científico Aplicado ao Ensino',
      'Resolução de Problemas de Matemática',
    ]) {
      await expect(this.courseCard(title)).toBeVisible();
    }
  }

  async expectCourseDetails(title: string, workload: string, status: string): Promise<void> {
    const card = this.courseCard(title);
    await expect(card).toBeVisible();
    await expect(card).toContainText(workload);
    await expect(card).toContainText(status);
  }

  async expectCoursesCallToAction(): Promise<void> {
    await expect(this.seeCoursesButton).toBeVisible();
    await expect(this.seeCoursesButton).toHaveRole('link');
    await expect(this.seeCoursesButton).toHaveText(/CONFIRA CURSOS/i);
    await expect(this.seeCoursesButton).toHaveAttribute('href', '/cursos');
    await expect(this.seeCoursesButton).toHaveClass(/bg-raspberry/);
  }

  async openCoursesList(): Promise<void> {
    await expect(this.seeCoursesButton).toBeVisible();
    await this.seeCoursesButton.click();
    await expect(this.page).toHaveURL(/\/cursos(?:[/?#]|$)/);
    await expect(this.page.locator('body')).toBeVisible();
  }
}
