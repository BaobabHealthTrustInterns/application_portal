# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

services = Service.create([{ :name => 'bart', :permalink => '#'}, { :name => 'radiology', :permalink => '#' }, { :name => 'registration', :permalink => '#' }, { :name => 'opd', :permalink => '#' }])
location = Location.create(:facility => 'Kamuzu Central Hospital', :district => 'Lilongwe')