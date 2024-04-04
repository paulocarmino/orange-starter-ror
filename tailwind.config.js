/** @type {import('tailwindcss').Config} */

module.exports = {
  content: [
    './node_modules/flowbite/**/*.js',
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/views/**/*.{html,html.erb,erb}",
    "./app/javascript/components/**/*.js",
  ],
  plugins: [
    require('flowbite/plugin'),
    require("@tailwindcss/typography"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/forms"),
  ],
};

