# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
case Rails.env
when "development"
   User.create(name: 'admin', email:'admin@admin.be')
   User.create(name: 'david', email:'david@admin.be')
   User.create(name: 'niels', email:'niels@admin.be')
   User.create(name: 'milan', email:'milan@admin.be')
   User.create(name: 'nicolas', email:'nicolas@admin.be')
when "production"
   User.create(name: 'admin', email:'admin@admin.be')
end
