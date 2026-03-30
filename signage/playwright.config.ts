import { defineConfig } from "@playwright/test";

export default defineConfig({
  testDir: "./tests",
  timeout: 30000,
  use: {
    baseURL: "https://signage-rouge.vercel.app",
    headless: true,
    screenshot: "only-on-failure",
  },
});
