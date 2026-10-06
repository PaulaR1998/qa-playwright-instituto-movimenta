# Automacao iPortal Instituto Movimenta

Suíte end-to-end com Playwright para o ambiente QA.

## Estrutura

- `pages/`: Page Objects e locators da aplicação.
- `fixtures/`: fixtures compartilhadas pelos testes.
- `tests/smoke/`: verificações rápidas de disponibilidade.
- `playwright.config.ts`: URL base, browsers, evidências e relatório.
- `.env.example`: variáveis esperadas no ambiente local/CI.

## Instalação

```powershell
npm install
npx playwright install
Copy-Item .env.example .env
```

A URL padrão é `https://institutomovimentaeducacao.com.br`. A Home é acessada em `/home`. Para sobrescrevê-la, edite `.env` ou defina `BASE_URL`.

## Execução

```powershell
npm test
npm run test:headed
npm run test:ui
npm run report
```

Os testes executam em Chromium, Firefox e WebKit. Falhas preservam screenshot, vídeo e trace em `test-results/`; o relatório HTML fica em `playwright-report/`.

Credenciais ainda não foram configuradas porque não foram fornecidas. Quando existirem fluxos autenticados, adicione-as somente ao `.env` local/CI e crie uma fixture de autenticação sem versionar segredos.
