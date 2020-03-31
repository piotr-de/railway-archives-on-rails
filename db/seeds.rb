# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Instantiating classes"

new_classes = [
	{ name: "EM10", propulsion: "Electric", category: "Shunting Locomotive", country: "Poland", operator: "PKP" },
	{ name: "EM120", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "EN56", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "EN56", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "EN57", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "EN57", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "SKM" },
	{ name: "EN71", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "EN71", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "SKM" },
	{ name: "EN80", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "EN94", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "EP02", propulsion: "Electric", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "EP03", propulsion: "Electric", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "EP05", propulsion: "Electric", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "EP07", propulsion: "Electric", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "EP08", propulsion: "Electric", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "EP09", propulsion: "Electric", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "ET21", propulsion: "Electric", category: "Freight Locomotive", country: "Poland", operator: "PKP" },
	{ name: "ET22", propulsion: "Electric", category: "Freight Locomotive", country: "Poland", operator: "PKP" },
	{ name: "ET40", propulsion: "Electric", category: "Freight Locomotive", country: "Poland", operator: "PKP" },
	{ name: "ET41", propulsion: "Electric", category: "Freight Locomotive", country: "Poland", operator: "PKP" },
	{ name: "ET42", propulsion: "Electric", category: "Freight Locomotive", country: "Poland", operator: "PKP" },
	{ name: "EU06", propulsion: "Electric", category: "Universal Locomotive", country: "Poland", operator: "PKP" },
	{ name: "EU07", propulsion: "Electric", category: "Universal Locomotive", country: "Poland", operator: "PKP" },
	{ name: "EU20", propulsion: "Electric", category: "Universal Locomotive", country: "Poland", operator: "PKP" },
	{ name: "EW51", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "EW58", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "EW60", propulsion: "Electric", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "Ok1", propulsion: "Electric", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "Ol49", propulsion: "Electric", category: "Locomotive", country: "Poland", operator: "PKP" },
]

puts "Total: #{new_classes.count}"

directories = []

path = Rails.root.join("static")

puts "Accessing #{path}"

Dir.foreach(path) do |dir|
	next unless dir.include?("-")
	directories << dir
end

puts "#{directories.count} directories found"

new_classes.each do |new_class|
	separator = new_class[:country] == "Poland" ? "-" : " "
	current_directory = "#{new_class[:name].downcase}-#{new_class[:operator].downcase}"
	if directories.include?(current_directory)
		Dir.foreach(File.join(path, current_directory)) do |file|
			if file.include?(".jpg") && file.split("-").length == 1
				new_class[:serial_no] = "#{new_class[:name]}#{separator}#{file.split(".")[0]}"
				new_unit = Unit.new(new_class)
				if new_unit.save
					puts "Unit #{new_unit.serial_no} created"
				else
					puts "Unit #{new_unit.serial_no} skipped"
				end
			end
		end
	end
end

source_path = path.join("source")

puts "Accessing source files in #{source_path}"

encounters = {}

Dir.foreach(source_path) do |source_file|
	next unless source_file.include?("src.txt")
	IO.foreach(File.join(source_path, source_file), mode: "r:iso-8859-1") do |line|
		unit_class = source_file.split("-")[0]
		next if line.include?("<!-")
		split_line = line.split("#")
		encounter = "#{unit_class}-#{split_line[0]}"
		encounters[encounter] = line.split("#")[1].split("^")
	end
end

puts "Encounters to instantiate: #{encounters.count}"

Unit.all.each do |unit|
	file_id = unit.serial_no.downcase
	while encounters.has_key?(file_id)
		new_encounter = Encounter.new(date: encounters[file_id][0], description: encounters[file_id][1], unit_id: unit.id)
		if new_encounter.save
			puts "Saved: #{unit.serial_no}, #{new_encounter["date"]}, #{new_encounter["description"]}"
		else
			puts "Skipped: #{unit.serial_no}, #{new_encounter["date"]}, #{new_encounter["description"]}"
		end
			file_split = file_id.split("-")
		if file_split.length > 2
			file_id = "#{file_split[0]}-#{file_split[1]}-#{file_split[2].to_i + 1}"
		else
			file_id += "-2"
		end
	end
end

puts "#{Encounter.all.count} encounters saved"
