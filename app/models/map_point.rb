class MapPoint < ActiveRecord::Base
	# attr_accessible :checkpoint, :latitude, :longitude, :value, :map_id
	belongs_to :map
end
