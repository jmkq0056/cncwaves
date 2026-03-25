import type { Config } from "tailwindcss";

const config: Config = {
  content: ["./src/**/*.{js,ts,jsx,tsx,mdx}"],
  theme: {
    extend: {
      colors: {
        brand: {
          DEFAULT: "#f17d00",
          50: "#fff7ed",
          100: "#fff1e1",
          200: "#fddcb0",
          300: "#fbbf6a",
          400: "#f9a033",
          500: "#f17d00",
          600: "#d96a00",
          700: "#b35200",
          800: "#8f4100",
          900: "#723500",
        },
        cnc: {
          dark: "#212529",
          green: "#7ac142",
          red: "#9d292b",
        },
      },
    },
  },
  plugins: [],
};
export default config;
