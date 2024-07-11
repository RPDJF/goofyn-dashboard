/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{html, js}",
  ],
  theme: {
    extend: {
      colors: {
        "background": "#151718",
      }
    },
  },
  plugins: [
    require("tailwindcss-animated"),
  ],
}
