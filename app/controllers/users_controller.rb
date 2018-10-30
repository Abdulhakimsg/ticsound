require 'byebug'

class UsersController < ApplicationController
   before_action :authenticate_user!, except: [:currloca]

  def currloca
    result = "lat: #{params[:lat]} & lon: #{params[:lon]}"
    session[:lat] = params[:lat]
    session[:lon] = params[:lon]

    #render json: {message: result} ,status: 200
  end

  def show

    @user = User.find(params[:id])
    if session[:lat] && session[:lon]
      # @userlocation =  Geocoder.search([session[:lat],session[:lon]])
      #puts "LAT: #{session[:lat]} & LON: #{session[:lon]}"
      @nearbyevents = Event.near([session[:lat], session[:lon]], 5, units: :km)
    end
    @events = Event.all
  end

end
