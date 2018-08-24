# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('/Users/cdhagmann/Documents/Momentum/project-w4-rails-small-business-cdhagmann/db/faust_inventory.csv', headers: true) do |row|
  Item.create(row.to_h)
end