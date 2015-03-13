require 'mongo'
require 'find' 
require 'pry'

db = Mongo::Connection.new("localhost").db("xwing")


puts "All collections in the database" 
db.collection_names.each {
	|name| puts name
}

puts "Here are the pilots. All of them" 

coll = db["pilots"]
puts coll.count()

pilots_path = []
Find.find('XWing/images/pilots') do |file|
  pilots_path << file
end

puts pilots_path.count

coll.find().each { |row|
  if(row["ship"]) 
    name_to_find = "XWing/images/pilots/" + row["ship"].downcase.sub(/[\s\.-]/,'')  + "_" +row["name"].downcase.sub(/\s/, '') + ".jpg"
    if pilots_path.include?(name_to_find)
      puts "found: " + name_to_find
    end 
  end
}
