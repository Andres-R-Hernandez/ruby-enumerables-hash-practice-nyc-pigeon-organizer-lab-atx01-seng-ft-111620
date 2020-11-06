pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # write your code here!

organized_data = {}

#Below code retrieves all names from data. Then flattens the AoA to create a 2D array
  unique_names = []
  data.each do |key, value|
    value.each do |attribute, names|
      unique_names << names
    end
  end
  unique_names.flatten!

#Below code removes repeating names from array of names
  unique_names.uniq!

#Below code creates list of attributes
  unique_attributes = []
  data.each do |key, value|
    unique_attributes << key
  end
=begin
#Below code creates attribute hash with empty arrays
  unique_attributes_hash = {}

  unique_attributes.each do |attribute|
    unique_attributes_hash[attribute] = []
  end

#Below code creates a HoHoA with the unique names and attributes
  unique_names.each do |name|
    organized_data[name] = unique_attributes_hash
  end
=end
### At this point we have a HoHoA with unique names and attributes associated with each name pointing to an empty array ###

#Below code uses a loop to add details to the arrays corresponding to the matching names and attributes from original data

organized_data = {}
count = 0
data.each do |key, value|
  value.each do |detail, names|
    names.each do |name|
    print name, detail, key, "\n"
    organized_data[name][unique_attributes[count]] << detail.to_s
    p organized_data
    count += 1
    end
  end
end


=begin
count = 1
  data.each do |key, value|
    value.each do |detail, names|
      p names
      names.each do |name|
        print count, " ", key, " ", detail, " ", name, " ", organized_data[name][key], "\n"
        organized_data[name][key] << detail.to_s
        p organized_data[name][key]
        puts "\n"
        count += 1
      end
    end
  end
=end

#Below code returns new organized pigeon data
  organized_data

end

p nyc_pigeon_organizer(pigeon_data)
