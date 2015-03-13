require 'mongo'
require 'find' 

db = Mongo::Connection.new("localhost").db("xwing")


puts "All collections in the database" 
db.collection_names.each {
	|name| puts name
}

puts "Here are the pilots. All of them" 

coll = db["pilots"]
puts coll.count()

coll.find().each { |row|
  if(row["ship"]) 
    name_to_find = "images/" + row["ship"].downcase.sub(/[\s\.-]/,'')  + "_" +row["name"].downcase.sub(/\s/, '')  
    puts name_to_find
  end
}
