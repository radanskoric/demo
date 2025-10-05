// Tailwind CSS v4 configuration
// Theme customization is now done in CSS using @theme directive
// See app/assets/tailwind/application.css

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './demos/*/app/views/**/*.{erb,haml,html,slim}'
  ]
}
