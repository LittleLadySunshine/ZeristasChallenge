class Event < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      event_hash = row.to_hash 
      event = Event.where(id: event_hash["id"])

      if event.count == 1
        event.first.update_attributes(event_hash)
      else
        Event.create!(event_hash)
      end
    end
  end
end
