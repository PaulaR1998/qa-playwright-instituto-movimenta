import { expect, test } from '../../fixtures/test';

const inclusiveCourse = 'Recursos e Metodologias para uma Educação Inclusiva';
const scientificCourse = 'Pensamento Científico Aplicado ao Ensino';
const mathCourse = 'Resolução de Problemas Matemáticos';

test.describe('Instituto Movimenta Educação | Home | Seção de cursos gratuitos e novos cursos', () => {
  test('Scenario 07 - deve exibir título, subtítulo e descrição institucional', async ({ homePage }) => {
    await homePage.open();
    await homePage.expectCoursesSection();
  });

  test('Scenario 08 - deve exibir os novos cursos com informações principais', async ({ homePage }) => {
    await homePage.open();
    await homePage.expectNewCoursesBlock();
  });

  test('Scenario 09 - deve exibir o curso de matemática como em breve', async ({ homePage }) => {
    await homePage.open();
    await homePage.expectCourseDetails(mathCourse, '40 horas', 'Em breve');
  });

  test('Scenario 10 - deve exibir carga horária e gratuidade dos cursos', async ({ homePage }) => {
    await homePage.open();
    await homePage.expectCourseDetails(inclusiveCourse, '40 horas', 'Gratuito');
    await homePage.expectCourseDetails(scientificCourse, '40 horas', 'Gratuito');
    await homePage.expectCourseDetails(mathCourse, '40 horas', 'Em breve');
  });

  test('Scenario 11 - deve exibir o CTA para ver mais cursos', async ({ homePage }) => {
    await homePage.open();
    await homePage.expectCoursesCallToAction();
  });

  test('Scenario 12 - deve navegar para a listagem de cursos', async ({ homePage }) => {
    await homePage.open();
    await homePage.openCoursesList();
  });

  test('Scenario 13 - deve navegar do card para os detalhes do curso', async ({ homePage }) => {
    await homePage.open();
    const courseLink = homePage.courseCard(inclusiveCourse).locator('a').first();
    await expect(courseLink).toHaveAttribute('href', /.+/);
    await expect(courseLink).toHaveAttribute('target', '_blank');
  });

  test.describe('Scenario 14 - consistência visual em desktop', () => {
    test.use({ viewport: { width: 1440, height: 900 } });

    test('deve exibir os blocos de cursos lado a lado e o CTA alinhado', async ({ homePage }) => {
      await homePage.open();
      await homePage.expectCoursesSection();
      await homePage.expectNewCoursesBlock();
      await homePage.expectCoursesCallToAction();
    });
  });

  test('Scenario 15 - deve garantir legibilidade e contraste da seção', async ({ homePage }) => {
    await homePage.open();
    await homePage.expectCoursesSection();
    await homePage.expectNewCoursesBlock();
    await expect(homePage.coursesSectionTitle).toBeVisible();
    await expect(homePage.coursesSubtitle).toBeVisible();
  });
});
