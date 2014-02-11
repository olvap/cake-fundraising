# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ['Global Initiative',
              'National Initiative',
              'Food and Hunger',
              'Medicine',
              'Education',
              'Animals and Wildlive',
              'Environment',
              'Water']

Category.delete_all

categories.each do |category|
  Category.create name: category
end

donate_kinds = ['Cash', 'Good and Services']

DonateKind.delete_all

donate_kinds.each do |kind|
  DonateKind.create name: kind
end