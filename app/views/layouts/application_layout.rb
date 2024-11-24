class ApplicationLayout < ApplicationView
	include Phlex::Rails::Layout
  
	def view_template(&block)
	  doctype
  
	  html do
		head do
		  title { "Eventz" }
		  meta(name: "viewport", content: "width=device-width, initial-scale=1")
		  unsafe_raw csrf_meta_tags
		  unsafe_raw csp_meta_tag
  
		  # Estilos y scripts con Vite
		   vite_client_tag 
		   vite_javascript_tag("application")
		   vite_stylesheet_tah("application.tailwind.css"
		    
		end
    
		body(class: "flex flex-col min-h-screen") do
		  # Renderiza componentes de navegación y cabecera
		  render NavbarComponent.new
		  render HeaderComponent.new
  
		  # Contenido principal
		  main(class: "flex-grow container mx-auto px-4 py-8", &block)
  
		  # Renderiza el footer
		  render FooterComponent.new
		end
	  end
	end
  end
  