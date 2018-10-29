class EventsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

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

    @event.user = current_user

    if @event.save
      render plain: event_params.inspect
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :venue, :address, :ticket_url, :description, :starttime, :endtime, :postal_code)
  end
end
