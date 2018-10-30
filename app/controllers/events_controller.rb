require "byebug"

class EventsController < ApplicationController
  before_action :authenticate_user!

  # def get_locations
  #   url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{params[:latitude]},#{params[:longitude]}&radius=500&key=#{Rails.application.secrets.google_places_key}"
  #   http_call = open(url).read
  #   response = JSON.parse(http_call, {:symbolize_names => true})
  #   @locations = response[:results]
  # end

  def index
    @events = Event.all
    @favourites = Favourite.where(user_id: current_user.id)
    @myevents = Event.where(user_id: current_user.id)
    # @userfav = @favourites.events

    # current_user.favourites(event_id: event.id)\
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save
    redirect_to events_path
    #render plain: event_params.inspect
  end

  def update
  end

  def destroy
    @event = Event.find(params[:id])
    @event.user = current_user
    @event.destroy
    redirect_to events_path
  end

  def postfav
    # current_user = user.events
    current_user.favourites.new(event_id: params[:id])
    current_user.save
    redirect_to events_path
  end

  def destroyfav
    @favourites = Favourite.find(params[:id])
    @favourites.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :venue, :address, :ticket_url, :description, :starttime, :endtime, :image, :remove_image)
  end
end
