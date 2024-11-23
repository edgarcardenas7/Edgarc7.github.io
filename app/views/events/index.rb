module Events
  class Index < Phlex::HTML
    def initialize(events:)
      @events = events
    end

    def view_template
      render ApplicationLayout.new do
        div(class: "container mx-auto px-4") do
          @events.each do |event|
            render EventComponent.new(event: event)
          end
        end
      end
    end
  end
end
