puts "Loading service names and permalinks"
services = [["PHARMACY", "sample/pharmacy.html"], ["DENTAL", "sample/dental.html"], ["REGISTRATION", "sample/registration.html"], ["OPD", "sample/opd"], ["ANC", "sample/anc.html"], ["BART", "sample/bart.html"], ["DASHBOARD", "sample/dashboard.html"], ["HCSA", "sample/hcsa.html"], ["IPD", "sample/ipd.html"], ["RADIOLOGY", "sample/radiology.html"], ["DDE2", "sample/dde2.html"], ["CHRONIC CARE", "sample/chronic.html"], ["CONSULTATION", "sample/consultation.html"]]

services.each do |name, permalink|
	service = Service.new
	service.name = name
	service.permalink = permalink
	service.save
end

puts ""

#puts "Loading default location details"
Location.create(:facility => 'KCH', :district => 'Lilongwe', :description => 'Kamuzu Central Hospital (KCH) is largest public hospital bla bla bla ...')

#puts ""

puts "Loading default administrator"
User.create(:username => "team_portal", :password => "groupsix", :email => "example@email.com", :first_name => "group", :last_name => "two")

puts ""
