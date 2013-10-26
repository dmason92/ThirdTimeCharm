# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Seed the CarTalk DB with some cars.
more_cars = [
             {:make => 'Honda', :model => 'Civic', :year => '1997',
               :body => 'Sedan', :avg_price => '2000', :comments => 'Good car'},
             {:make => 'Dodge', :model => 'Charger', :year => '2009',
               :body => 'Muscle', :avg_price => '10000', :comments => 'Reliable'},
             {:make => 'Nissan', :model => 'Sentra', :year => '2013',
               :body => 'Sedan', :avg_price => '15000', :comments => 'Nice ride'}]

Car.send(:attr_accessible, :make, :model, :year, :body)
more_cars.each do |car|
  Car.create!(car)
end
