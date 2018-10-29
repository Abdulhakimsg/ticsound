require "byebug"

class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all
    @favourites = Favourite.where(user_id: current_user.id)
    # @userfav = @favourites.events

    # current_user.favourites(event_id: event.id)\
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

  def postfav
    # current_user = user.events
    current_user.favourites.new(event_id: params[:id])
    current_user.save
  end

  private

  def event_params
    params.require(:event).permit(:name, :venue, :address, :ticket_url, :description, :starttime, :endtime, :postal_code)
  end
end
