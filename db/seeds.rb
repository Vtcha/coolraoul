## This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'



#seed patient
50.times do
	Patient.create!(
	first_name: Faker::Name.first_name,
	last_name: Faker::Name.last_name)
end

#seed doc
	
10.times do 
	Doctor.create!(
	first_name: Faker::Name.first_name,
	last_name: Faker::Name.last_name,
	zip_code: Faker::Number.number(9))
end 

#sees city
10.times do 
	City.create!(
	name_town: Faker::Adress.city)
end

#seed appointment 
100.times do 
	d = Doctor.order("RANDOM()").limit(1).ids[0]
	p = Patient.order("RANDOM()").limit(1).ids[0]
	a = Appointment.order("RANDOM()").limit(1).ids[0]
	Appointment.create!(
	doctor_id: d,
	patient_id: p,
	city_id: c,
	date: Faker::Time.between(DateTime.now, DateTime.now + 30))
end
