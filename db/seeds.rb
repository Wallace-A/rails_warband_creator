# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Warband.destroy_all

puts "Creating warbands..."
warband_1 = { name: "Charlotte's Cutthroats"}
warband_2 =  { name: "Brandon's Bad Boys"}
warband_3 =  { name: "Henry's Hatchetmen"}
[ warband_1, warband_2, warband_3].each do |attributes|
  warband = Warband.create!(attributes)
  puts "Created #{warband.name}"
end
puts "Finished!"