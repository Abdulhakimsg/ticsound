class EventsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    @event.save
    # render plain: event_params.inspect
  end

  def update
  end

  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:name, :venue, :address, :ticket_url, :description, :starttime, :endtime)
  end
end