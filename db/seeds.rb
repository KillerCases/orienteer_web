# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Map(id: integer, country: string, city: string, name: string, map_url: string, is_active: boolean, created_at: datetime, updated_at: datetime) 
map_seed = [
["1", "USA", "Boston", "Cambridge 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["2", "USA", "Boston", "Waltham 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["3", "USA", "New York", "Brooklyn 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["4", "USA", "New York", "Manhattan Hop", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["5", "USA", "San Francisco", "SOHO 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["6", "USA", "San Francisco", "Presidio 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["7", "USA", "Los Angeles", "Santa Monica 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["8", "USA", "Los Angeles", "Downtown 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["9", "Canada", "Toronto", "Waterfront 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["10", "Canada", "Toronto", "Brickworks 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["11", "UK", "London", "Hyde Park 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ],
["12", "UK", "London", "Greenwich 01", "https://maps.google.com/maps/ms?msid=20919750828134", "true" ]
]

Map.delete_all
map_seed.each do |id, country, city, name, map_url, is_active|
	Map.create(id:id, country:country, city:city, name:name, map_url:map_url, is_active:is_active)
end

# MapPoint(id: integer, checkpoint: integer, latitude: decimal, longitude: decimal, value: integer, created_at: datetime, updated_at: datetime, map_id: integer) 
point_seed = [
["1", "42.3508680", "-71.0715760", "10", "1"],
["2", "42.3736920", "-71.1104890", "10", "1"],
["3", "42.3676760", "-71.1269470", "10", "1"],
["4", "42.3899630", "-71.1507230", "10", "1"],
["5", "42.3886000", "-71.1342220", "10", "1"],
["6", "42.3836070", "-71.1472460", "10", "1"],
["7", "42.3711010", "-71.1453150", "10", "1"],
["8", "42.3663920", "-71.1511090", "10", "1"],
["9", "42.3668920", "-71.1353910", "10", "1"],
["10", "42.3791690", "-71.1339210", "10", "1"],
["11", "42.3744300", "-71.1166580", "10", "1"],
["12", "42.3769100", "-71.1217870", "10", "1"],
["13", "42.3723210", "-71.1325690", "10", "1"],
["14", "42.3746910", "-71.1274030", "10", "1"],
["15", "42.3667250", "-71.1147170", "10", "1"],
["16", "42.3693250", "-71.1078290", "10", "1"],
["17", "42.3552060", "-71.0703650", "10", "1"],
["18", "42.3527400", "-71.0693460", "10", "1"],
["19", "42.3746480", "-71.0989080", "10", "1"],
["20", "42.3508680", "-71.0715760", "10", "1"],
["1", "42.3508680", "-71.0715760", "10", "2"],
["2", "42.3736920", "-71.1104890", "10", "2"]
]

MapPoint.delete_all
point_seed.each do|checkpoint, latitude, longitude, value, map_id|
	MapPoint.create(checkpoint:checkpoint, latitude:latitude, longitude:longitude, value:value, map_id:map_id)
end

# Result(id: integer, user_id: integer, map_id: integer, score: integer, created_at: datetime, updated_at: datetime, checkpoints_visited: ) 

# result_seed =[
# ["1", "1", "100"],
# ["2", "1", "90"],
# ["3", "1", "80"]
# ]

# Result.delete_all
# result_seed.each do |user_id, map_id, score|
# 	Result.create(user_id:user_id, map_id:map_id, score:score)
# end


# user_seed =[
# ["1", "jo@123.com", "12345678", "Jo Test"],
# ["2", "jo@223.com", "22345678", "Jo Test 2"],
# ["3", "jo@323.com", "32345678", "Jo Test 23"],
# ["4", "jo@423.com", "42345678", "Unregistered User"],
# ["5", "jo@523.com", "42345678", "Unregistered User"]
# ]

# User.destroy_all
# user_seed.each do |id, email, password, name|
# 	User.create(id:id, email:email, password:password, name:name)
# end

