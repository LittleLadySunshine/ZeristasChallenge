class EventsId < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.belongs_to :tasks
    end
  end
end
