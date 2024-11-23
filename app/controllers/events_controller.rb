class EventsController < ApplicationController
  def index
    render Events::Index.new(events: Event.all)
  end
end
