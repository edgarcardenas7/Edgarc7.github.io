# app/views/components/header_component.rb
class HeaderComponent < ApplicationView
    def view_template
      header(class: "bg-blue text-offWhite py-4") do
        h1(class: "text-2xl font-bold text-center") { "Events" }
      end
    end
  end