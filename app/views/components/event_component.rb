# app/views/components/event_component.rb
class EventComponent < ApplicationView
  include EventsHelper # Asegúrate de que los helpers estén accesibles

  def initialize(event:)
    @event = event
    super()
  end

  def view_template
    section(class: "event mb-8 p-6 bg-offWhite rounded-lg shadow-md") do
      div(class: "summary flex justify-between items-center mb-4") do
        h2(class: "text-xl font-semibold text-black") { @event.name }
        span(class: "price bg-orange text-black px-2 py-1 rounded text-sm") do
          number_to_currency(@event.price)
        end
      end

      h3(class: "text-mediumGray mb-2") do
        day_and_time(@event)
        " in #{@event.location}"
      end

      p(class: "text-darkGray") do
        truncate(@event.description.to_s, length: 35)
      end
    end
  end

  private

  def truncate(text, length: 35, omission: "...")
    text.length > length ? "#{text[0...length]}#{omission}" : text
  end
end
