class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:currloca, :index]

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
    @events = Event.where(starttime: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day + 20.days)
    # @favourites = Favourite.where(user_id: current_user.id)
    # @myevents = Event.where(user_id: current_user.id)
  end

  def show
    #(byebug)
    @event = Event.find(params[:id])
    #get the lat and lon for the pin the radius
    @myevents = Event.near([@event.latitude, @event.longitude], 10, units: :km)
    #get the event from the comparing current day + 10 days
    @myevents = @myevents.where(starttime: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day + 10.days)
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
    @event = Event.find(params[:id])

    @event.user = current_user

    if @event.update(event_params)
      redirect_to events_path
    else
      render "update"
      redirect_to events_path
    end
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
    #@currenteventelem = params[:id]

    redirect_to events_path(anchor: "event" + "#{params[:id]}")
  end

  # def destroyfav
  #   @favourites = Favourite.find(params[:id])
  #   @favourites.destroy
  #   redirect_to events_path
  # end

  def deletefav
    # render plain: params.inspect
    #@favourites = Favourite.event_id
    @favourites = Favourite.find(params[:id])
    @favourites.destroy
    #@currenteventelem = params[:id]
    redirect_to events_path(anchor: "event" + "#{params[:id]}")
  end

  private

  def event_params
    params.require(:event).permit(:name, :venue, :address, :ticket_url, :description, :starttime, :endtime, :image, :remove_image)
  end
end
