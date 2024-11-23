class AddsFieldsToEvents < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :description, :text
    add_column :events, :starts_at, :datetime
  end
end
