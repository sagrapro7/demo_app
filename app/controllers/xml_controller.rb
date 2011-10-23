require 'rexml/document'
class XmlController < ApplicationController
	def getxml
		places = Place.all
		doc = REXML::Document.new
		root = doc.add_element("Places")
		
		places.each do |place|
			place_element = root.add_element("Place")
			
			place_element.add_attribute("name", place.name)
			place_element.add_attribute("x", place.x_coord)
			place_element.add_attribute("y", place.y_coord)
			place_element.add_attribute("country", place.country)
			place_element.add_attribute("city", place.city)
			place_element.add_attribute("street", place.street)
			place_element.add_attribute("time", place.time)
			place_element.add_attribute("cost", place.cost)
			place_element.add_element("tags").add_text(place.tags)
			place_element.add_element("descr").add_text(place.descr)
		end
		
		doc.write(output = "", 2)
		send_data(output, :type => "text/xml", :filename => "places.xml")
	end
end
