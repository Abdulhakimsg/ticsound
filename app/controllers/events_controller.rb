require "byebug"

class EventsController < ApplicationController
  before_action :authenticate_user!

  # def get_locations
  #   url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{params[:latitude]},#{params[:longitude]}&radius=500&key=#{Rails.application.secrets.google_places_key}"
  #   http_call = open(url).read
  #   response = JSON.parse(http_call, {:symbolize_names => true})
  #   @locations = response[:results]
  # end

  def currloca
    result = "lat: #{params[:lat]} & lon: #{params[:lon]}"
    session[:lat] = params[:lat]
    session[:lon] = params[:lon]
  end


  def index
    @events = Event.all
    @favourites = Favourite.where(user_id: current_user.id)
    # @userfav = @favourites.events

    # current_user.favourites(event_id: event.id)\
  end

  def show
     @event = Event.find(params[:id])
     #@userloc = @userlocation.address
  end

  def new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)

    @event.user = current_user

    #if
    @event.save
      #render plain: event_params.inspect
    #else
    # render "new"
    #end
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
    params.require(:event).permit(:name, :venue, :address, :ticket_url, :description, :starttime, :endtime,)
  end
end
