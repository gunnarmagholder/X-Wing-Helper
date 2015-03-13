require 'mongo'

db = Mongo::Connection.new("localhost").db("xwing")

db.collection_names.each {
	|name| puts name
}


