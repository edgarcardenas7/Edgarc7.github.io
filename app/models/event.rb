class Event < ApplicationRecord
    # Definir el método free? para verificar si el evento es gratuito
    def free?
     price.blank? || price.zero?
    end
  end
  