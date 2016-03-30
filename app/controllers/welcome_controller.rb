class WelcomeController < ApplicationController
  def homepage


  	    @restaurant = Restaurant.all()
  	    @hash = Gmaps4rails.build_markers(@restaurant) do |res, marker|
  		  marker.lat res.lat
  		  marker.lng res.long
  		  marker.title res.name
  		  marker.infowindow("<img width='50' height='50' src='#{res.img_url}'/><br><br>#{res.name}<br>Description: #{res.description}<br>Deal: €#{res.deal}<br><a href='#socialmedia'>Find out more here</a>")
  		end


  	end
  def contact_success

  end

end