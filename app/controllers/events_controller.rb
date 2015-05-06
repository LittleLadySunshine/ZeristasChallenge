class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def import
    Event.import(params[:file])
    redirect_to root_url, notice: "Events imported."
  end
end
