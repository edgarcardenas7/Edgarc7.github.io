# app/views/application_view.rb
class ApplicationView < Phlex::HTML
	include Phlex::Rails::Helpers::Routes
	include Phlex::Rails::Helpers::AssetPath
	include ActionView::Helpers::NumberHelper
	include ActionView::Helpers::TextHelper  # Para truncate
	include ActionView::Helpers::DateHelper  # Para helpers de fecha
  
	def initialize(**assigns)
	  super()
	  @assigns = assigns
	end
  
	private
  
	attr_reader :assigns
  end 
  