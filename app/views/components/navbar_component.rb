class NavbarComponent < ApplicationView
  def view_template
    nav(class: "navbar bg-primary text-primary-content py-2 flex justify-between px-4 items-center") do
      # Logo
      img(src: helpers.asset_path("logo.png"), alt: "Logo", class: "h-8")      
    
    end
  end
end
