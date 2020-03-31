# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating classes"

new_classes = [
	{ name: "EM10", propulsion: "Electric", category: "Shunting Locomotive", country: "Poland", operator: "PKP" }
]

puts "#{new_classes.count} classes created"

directories = []

path = Rails.root.join("static")

puts "Accessing #{path}"

Dir.foreach(path) do |dir|
	next if dir.include?(".") || !dir.include?("-")
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
