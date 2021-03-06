#Find the possible venues that are wheelchair accessible, in Toronto, and can fit at least 150 people.
#These results should be stored in an array.



venues = [
{ address: "123 Main Street", city: "Toronto", wheelchair_accessible: true, capacity: 100 },
{ address: "567 Centre Street", city: "Toronto", wheelchair_accessible: false, capacity: 400 },
{ address: "9B Ontario Street", city: "Montreal", wheelchair_accessible: true, capacity: 1000 },
{ address: "56 Road Avenue", city: "Ottawa", wheelchair_accessible: true, capacity: 650 },
{ address: "938 Avenue Way East", city: "Toronto", wheelchair_accessible: false, capacity: 90 },
{ address: "34 Main Street West", city: "London", wheelchair_accessible: false, capacity: 300 },
{ address: "44 Quebec Road", city: "Toronto", wheelchair_accessible: true, capacity: 200 },
{ address: "10 Spruce Avenue Ouest", city: "Montreal", wheelchair_accessible: false, capacity: 525 }

]

possible_venues = []

# each venue, look through keys to find wheelchair wheelchair_accessible = true
# each venue, look through the keys to find capacity that is >= 150
venues.each do |venues|
   if venues[:wheelchair_accessible] == true && venues[:capacity] >= 150
     possible_venues << venues[:address]
   end
end

good_venues = venues.find_all do |venue|
  venue[:city] == "Toronto" && venue[:wheelchair_accessible] == true && venue[:capacity] >= 150
end


# if both the wheelchair_accessible is true, and the capacity is >= 150
# then store the address in the overall array
