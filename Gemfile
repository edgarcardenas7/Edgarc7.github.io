source "https://rubygems.org"

# Rails y otras gemas necesarias
gem "rails", "~> 7.2.2"
gem "sprockets-rails" 
gem "sqlite3", ">= 1.4"
gem "puma", ">= 5.0"
gem "turbo-rails" 
gem "stimulus-rails" # Igual que Turbo
gem "jbuilder"

# Para manejar assets con Vite
gem "vite_rails" # Nueva gema añadida
# gem "tailwindcss-rails" # Si usas Vite para TailwindCSS, esta gema ya no sería necesaria

# Otros comentarios y gemas opcionales
# gem "redis", ">= 4.0.1"
# gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "phlex-rails", "~> 1.2"

# gem "tailwindcss-rails", "~> 3.0" # Esto se comenta si usas Vite para manejar Tailwind
