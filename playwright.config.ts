import { defineConfig } from '@playwright/test';

export default defineConfig({
  testDir: './tests',
  timeout: 30000,
  use: {
    baseURL: 'http://localhost:9080',
    browserName: 'chromium',
    headless: true,
    screenshot: 'only-on-failure',
  },
  webServer: {
    command: 'python3 -m http.server 9080 --directory build/web',
    port: 9080,
    reuseExistingServer: true,
  },
});
