# events_helper.rb
module EventsHelper
  def price(event)
    if event.free?
      "Free"
    else
      number_to_currency(event.price, precision: 0)
    end
  end
   def day_and_time(event)
     event.starts_at.strftime("%A, %B %d at %I:%M %p")
   end
end
