module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
	module Flight
  		def take_off(altitude)
   			puts "Taking off and ascending until reaching #{altitude} ..."
 		 end
	end
end

class Plane
	module Flight
  		def take_off(altitude)
   			puts "Taking off and ascending until reaching #{altitude} ..."
 		 end
	end
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)