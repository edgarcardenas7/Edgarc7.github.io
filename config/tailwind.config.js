 const defaultTheme = require('tailwindcss/defaultTheme')
module.exports = {
  content: [
    './app/views/**/*.rb',  
    './app/views/layouts/**/*.rb',
    './app/javascript/**/*.{js,jsx,ts,tsx}',
    './app/assets/builds/**/*.js',
  ],
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('daisyui'),
  ],
  daisyui: {
    themes: ["light", {
      mytheme: {
        primary: '#237cbe',
        secondary: '#666',
        accent: '#e8890c',
        neutral: '#393939',
        'base-100': '#ededed',
        info: '#60aef5',
        success: '#22c55e',
        warning: '#ffc107',
        error: '#dc3545',
      },
    }],
  }
}