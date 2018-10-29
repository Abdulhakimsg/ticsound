class EventsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @events = Event.all
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

    if @event.save
      render plain: event_params.inspect
    else
      render 'new'
    end
  end

  def update
    @event = Event.find(params[:id])

    @event.user = current_user

    if @event.update(event_params)
      render plain: event_params.inspect
    else
      render 'update'
    end
  end

  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:name, :venue, :address, :ticket_url, :description, :starttime, :endtime, :image)
  end
end