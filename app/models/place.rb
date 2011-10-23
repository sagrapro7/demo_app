class Place < ActiveRecord::Base
	attr_accessible :name, :x_coord, :y_coord, :country, :city, :street, :time, :cost, :tags
	attr_accessible :descr
	validates :name, :presence => true
	validates :x_coord, :presence => true,
			    :numericality =>true
	validates :y_coord, :presence => true,
			    :numericality =>true
	validates :tags, :presence => true
end
