# app/views/components/footer_component.rb
class FooterComponent < ApplicationView
    def view_template
      footer(class: "bg-darkGray text-offWhite py-4 text-center mt-8") do
        p { "© #{Time.current.year} Events App" }
      end
    end
  end