# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Car.destroy_all
User.destroy_all

User.create!(
  first_name: 'Marcel',
  last_name: 'Patulacci',
  nick_name: 'Marcelou',
  email: 'marcel.patulacci@gmail.com',
  password: 'azerty'
)
