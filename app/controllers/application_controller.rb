# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  layout ApplicationLayout
  def render_with_phlex(component_class, **assigns)
    render(html: component_class.new(**assigns).call)
  end
end
