class Map < ActiveRecord::Base
	# attr_accessible :country, :city, :name, :map_url, :is_active
	has_many :map_points
	has_many :results

	def self.search_for(query)
    where('name LIKE :query OR city LIKE :query OR country LIKE :query', query: "%#{query}%")
  	end
end
