class WelcomeController < ApplicationController
  def homepage



  	    @restaurant = Restaurant.all()
  	    @hash = Gmaps4rails.build_markers(@restaurant) do |res, marker|
  		  marker.lat res.lat
  		  marker.lng res.long
      
  	end
  end

  


      def gmaps4rails_infowindow
      
    end







end
