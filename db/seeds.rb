# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all
Review.destroy_all


KFC = Restaurant.create(name: 'KFC')
KFC.reviews.create(rating: 1, thoughts: 'Bad')
KFC.reviews.create(rating: 1, thoughts: 'Poor')
KFC.reviews.create(rating: 1, thoughts: 'Ok')
KFC.reviews.create(rating: 1, thoughts: 'Good')
KFC.reviews.create(rating: 1, thoughts: 'Great')

Nandos = Restaurant.create(name: 'Nandos')
Nandos.reviews.create(rating: 1, thoughts: 'Really Bad')
Nandos.reviews.create(rating: 1, thoughts: 'Really Poor')
Nandos.reviews.create(rating: 1, thoughts: 'Really Ok')
Nandos.reviews.create(rating: 1, thoughts: 'Really Good')
Nandos.reviews.create(rating: 1, thoughts: 'Really Great')

Wimpy = Restaurant.create(name: 'Wimpy')
Wimpy.reviews.create(rating: 1, thoughts: 'Really Really Bad')
Wimpy.reviews.create(rating: 1, thoughts: 'Really Really Poor')
Wimpy.reviews.create(rating: 1, thoughts: 'Really Really Ok')
Wimpy.reviews.create(rating: 1, thoughts: 'Really Really Good')
Wimpy.reviews.create(rating: 1, thoughts: 'Really Really Great')


