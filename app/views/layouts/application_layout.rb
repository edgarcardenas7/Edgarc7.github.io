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
  
		  # Asegúrate de que solo incluyes estos estilos
		  unsafe_raw stylesheet_link_tag("application", data: { turbo_track: "reload" })
		  unsafe_raw stylesheet_link_tag("application.tailwind", data: { turbo_track: "reload" })
		  unsafe_raw javascript_importmap_tags
		end
  
		body(class: "flex flex-col min-h-screen") do
		  render NavbarComponent.new
		  render HeaderComponent.new
  
		
  
		  # Contenido principal
		  main(class: "flex-grow container mx-auto px-4 py-8", &block)
  
		  render FooterComponent.new
		end
	  end
	end
  end
  