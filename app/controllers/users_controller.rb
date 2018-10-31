require 'byebug'
require 'date'

class UsersController < ApplicationController
   before_action :authenticate_user!, except: [:currloca]

  def currloca
    result = "lat: #{params[:lat]} & lon: #{params[:lon]}"
    session[:lat] = params[:lat]
    session[:lon] = params[:lon]

    #render json: {message: result} ,status: 200
  end

  def index
    @users = User.all
  end

  def show

    #@events = Event.where(starttime: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day + 10.days)
    #Event.where(starttime == )
    #@sortevents = @events.sort_by &:starttime
    @sortevents = Event.where(starttime: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day + 10.days)

    @user = User.find(params[:id])
    if session[:lat] && session[:lon]
      # @userlocation =  Geocoder.search([session[:lat],session[:lon]])
      #puts "LAT: #{session[:lat]} & LON: #{session[:lon]}"
      # @nearbyevents = Event.near([session[:lat], session[:lon]], 3, units: :km)
      # @nearbyevents = @nearbyevents.where()
      @sortevents = @sortevents.near([session[:lat], session[:lon]], 5, units: :km)
      # @sortevents = @sortevents.where/sort_by
    end



  end

end