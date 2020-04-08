# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Instantiating classes"

puts "Environment: #{Rails.env}"

new_classes = [
	{ name: "201E", propulsion: "Electric", category: "Freight Locomotive", country: "Poland", operator: "CTL" },
	{ name: "3E", propulsion: "Electric", category: "Freight Locomotive", country: "Poland", operator: "CTL" },
	{ name: "3E", propulsion: "Electric", category: "Freight Locomotive", country: "Poland", operator: "KP_Szczakowa" },
	{ name: "401Da", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "409Da", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "411s", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PKP" },
	{ name: "418D", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "418Da", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
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
	{ name: "Ls150", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "Ls300", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "Ls40", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "Ls60", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "Ls800", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "Ok1", propulsion: "Steam", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "Ol49", propulsion: "Steam", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "Pt47", propulsion: "Steam", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "Ol49", propulsion: "Steam", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "Ol49", propulsion: "Steam", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "S200", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "SA101", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "SA102", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "SA105", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "SA106", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "SA107", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "SA108", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "SA109", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "SM03", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SM15", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SM25", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SM30", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SM31", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SM41", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SM42", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SM42", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "Lotos_Kolej" },
	{ name: "SM48", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SM48", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "LHS" },
	{ name: "SN61", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "SN81", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "SP30", propulsion: "Diesel", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SP32", propulsion: "Diesel", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SP42", propulsion: "Diesel", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SP45", propulsion: "Diesel", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SP47", propulsion: "Diesel", category: "Passenger Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SR53", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "SR71", propulsion: "Diesel", category: "Motor Unit", country: "Poland", operator: "PKP" },
	{ name: "ST43", propulsion: "Diesel", category: "Freight Locomotive", country: "Poland", operator: "PKP" },
	{ name: "ST44", propulsion: "Diesel", category: "Freight Locomotive", country: "Poland", operator: "PKP" },
	{ name: "ST44", propulsion: "Diesel", category: "Freight Locomotive", country: "Poland", operator: "LHS" },
	{ name: "SU42", propulsion: "Diesel", category: "Universal Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SU45", propulsion: "Diesel", category: "Universal Locomotive", country: "Poland", operator: "PKP" },
	{ name: "SU46", propulsion: "Diesel", category: "Universal Locomotive", country: "Poland", operator: "PKP" },
	{ name: "T448p", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "TEM2", propulsion: "Diesel", category: "Shunting Locomotive", country: "Poland", operator: "PL" },
	{ name: "TKt48", propulsion: "Steam", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "Tr5", propulsion: "Steam", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "Ty2", propulsion: "Steam", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "Ty45", propulsion: "Steam", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "Ty51", propulsion: "Steam", category: "Locomotive", country: "Poland", operator: "PKP" },
	{ name: "010", propulsion: "Diesel", category: "Motor Unit", country: "Czech Republic", operator: "CD" },
	{ name: "012", propulsion: "Diesel", category: "Motor Unit", country: "Czech Republic", operator: "CD" },
	{ name: "021", propulsion: "Diesel", category: "Motor Unit", country: "Czech Republic", operator: "CD" },
	{ name: "1047", propulsion: "Electric", category: "Locomotive", country: "Hungary", operator: "MAV" },
	{ name: "110", propulsion: "Electric", category: "Locomotive", country: "Germany", operator: "DB" },
	{ name: "110", propulsion: "Electric", category: "Locomotive", country: "Slovakia", operator: "ZSSK" },
	{ name: "1116", propulsion: "Electric", category: "Locomotive", country: "Austria", operator: "OBB" },
	{ name: "140", propulsion: "Electric", category: "Locomotive", country: "Slovakia", operator: "ZSSK" },
	{ name: "112", propulsion: "Electric", category: "Locomotive", country: "Germany", operator: "DB" },
	{ name: "182", propulsion: "Electric", category: "Locomotive", country: "Czech Republic", operator: "CD" },
	{ name: "210", propulsion: "Electric", category: "Locomotive", country: "Czech Republic", operator: "CD" },
	{ name: "218", propulsion: "Diesel", category: "Locomotive", country: "Germany", operator: "DB" },
	{ name: "230", propulsion: "Electric", category: "Locomotive", country: "Czech Republic", operator: "CD" },
	{ name: "232", propulsion: "Diesel", category: "Locomotive", country: "Germany", operator: "DB" },
	{ name: "242", propulsion: "Electric", category: "Locomotive", country: "Czech Republic", operator: "CD" },
	{ name: "263", propulsion: "Electric", category: "Locomotive", country: "Czech Republic", operator: "CD" },
	{ name: "2M62", propulsion: "Diesel", category: "Locomotive", country: "Ukraine", operator: "UZ" },
	{ name: "2M62U", propulsion: "Diesel", category: "Locomotive", country: "Belarus", operator: "BC" },
	{ name: "350", propulsion: "Electric", category: "Locomotive", country: "Slovakia", operator: "ZSSK" },
	{ name: "362", propulsion: "Electric", category: "Locomotive", country: "Slovakia", operator: "ZSSK" },
	{ name: "363", propulsion: "Electric", category: "Locomotive", country: "Czech Republic", operator: "CD" },
	{ name: "ASF", propulsion: "Auxiliary", category: "Rail Vehicle", country: "Poland", operator: "PKP" },
	{ name: "DGS", propulsion: "Auxiliary", category: "Rail Vehicle", country: "Poland", operator: "PKP" },
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

image_path = "http://piotrd.czuby.net/railway-archives/"

Unit.all.each do |unit|
	file_id = unit.country == "Poland" ? unit.serial_no.downcase : unit.serial_no.downcase.split(" ").join("-")
	while encounters.has_key?(file_id)
		file_split = file_id.split("-")
		if file_split.length > 2
			jpg_path = image_path + "#{file_split[0]}-#{unit.operator.downcase}/#{file_split[1]}-#{file_split[2]}.jpg"
		else
			jpg_path = image_path + "#{file_split[0]}-#{unit.operator.downcase}/#{file_split[1]}.jpg"
		end
		puts "Resolving #{jpg_path}"
		folder = "railway-archives/2000-2004/#{file_split[0]}-#{unit.operator.downcase}"
		upload = Cloudinary::Uploader.upload(jpg_path,
			folder: folder,
			use_filename: true,
			unique_filename: false,
			overwrite: false
			)
		if upload["existing"]
			puts "Upload skipped"
		else
			puts "Uploaded"
		end
		new_encounter = Encounter.new(date: encounters[file_id][0], description: encounters[file_id][1], image_url: upload["public_id"], unit_id: unit.id)
		if new_encounter.save
			puts "Saved: #{unit.serial_no}, #{new_encounter["date"]}, #{new_encounter["description"]}"
		else
			puts "Skipped: #{unit.serial_no}, #{new_encounter["date"]}, #{new_encounter["description"]}"
		end
		if file_split.length > 2
			file_id = "#{file_split[0]}-#{file_split[1]}-#{file_split[2].to_i + 1}"
		else
			file_id += "-2"
		end
	end
end

puts "#{Encounter.all.count} encounters saved"
