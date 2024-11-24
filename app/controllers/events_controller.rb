class EventsController < ApplicationController
  layout -> { "ApplicationLayout" }
  def index
    render Events::Index.new(events: Event.all) 
  end
end

