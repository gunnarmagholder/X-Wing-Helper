trans_hash = { "Red Squadron Pilot" =>  "Pilot der Rot-Staffel",
	"Rookie Pilot" =>  "Anfängerpilot",
	"Gray Squadron Pilot" =>  "Pilot der Grau-Staffel",
	"Gold Squadron Pilot" =>  "Pilot der Gold-Staffel",
	"Academy Pilot" =>  "Pilot der Akademie",
	"Obsidian Squadron Pilot" =>  "Pilot der Obsidian-Staffel",
	"Black Squadron Pilot" =>  "Pilot der Schwarz-Staffel",
	'"Winged Gundark"' =>  '"Geflügelter Gundark"',
	'"Night Beast"' =>  '"Nachtbestie"',
	'"Howlrunner"' =>  '"Kreischläufer"',
	"Tempest Squadron Pilot" =>  "Pilot der Tornado-Staffel",
	"Storm Squadron Pilot" =>  "Pilot der Storm-Staffel",
	"Alpha Squadron Pilot" =>  "Pilot der Alpha-Staffel",
	"Avenger Squadron Pilot" =>  "Pilot der Avenger-Staffel",
	"Saber Squadron Pilot" =>  "Pilot der Saber-Staffel",
	"Green Squadron Pilot" =>  "Pilot der Grün-Staffel",
	"Prototype Pilot" =>  "Testpilot",
	"Outer Rim Smuggler" =>  "Schmuggler aus dem Outer Rim",
	"Bounty Hunter" =>  "Kopfgeldjäger",
	"Dagger Squadron Pilot" =>  "Pilot der Dagger-Staffel",
	"Blue Squadron Pilot" =>  "Pilot der Blauen Staffel",
	"Rebel Operative" =>  "Rebellenagent",
	"Scimitar Squadron Pilot" =>  "Pilot der Scimitar-Staffel",
	"Gamma Squadron Pilot" =>  "Pilot der Gamma-Staffel",
	"Omicron Group Pilot" =>  "Pilot der Omikron-Gruppe",
	"Royal Guard Pilot" =>  "Pilot der Roten Garde",
	"GR-75 Medium Transport" =>  "Medium-Transporter GR-75",
	"Bandit Squadron Pilot" =>  "Pilot der Bandit-Staffel",
	"Tala Squadron Pilot" =>  "Pilot der Tala-Staffel",
	"Delta Squadron Pilot" =>  "Pilot der Delta-Staffel",
	"Onyx Squadron Pilot" =>  "Pilot der Onyx-Staffel",
	"Knave Squadron Pilot" =>  "Pilot der Schurken-Staffel",
	"Blackmoon Squadron Pilot" =>  "Pilot der Schwarzmond-Staffel",
	"Sigma Squadron Pilot" =>  "Pilot der Sigma-Staffel",
	"Shadow Squadron Pilot" =>  "Pilot der Schatten-Staffel",
	'"Echo"' =>  '"Echo"',
	'"Whisper"' =>  '"Geflüster"',
	"CR90 Corvette (Fore)" =>  "CR90-Korvette (Bug)",
	"CR90 Corvette (Aft)" =>  "CR90-Korvette (Heck)",
	"Wild Space Fringer" =>  "Grenzgänger aus dem Wilden Raum",
	"Patrol Leader" =>  "Patrouillenführer" }

require 'mongo'
require 'find' 
require 'pry'

db = Mongo::Connection.new("localhost").db("xwing")

coll = db["pilots"]

coll.find().each { |row|
  if(row["ship"]) 
    puts trans_hash[row["name"]] if trans_hash[row["name"]]
    coll.update( { :_id => row["_id"] }, '$set' => { :name => trans_hash["name"] })
  end
}
