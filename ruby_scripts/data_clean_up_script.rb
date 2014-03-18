#in Terminal: cd Dropbox/Database\ Files/Shared\ Database\ Files/Overall\ Files/
#in Terminal: irb

#must require csv
require 'csv'

#must define people variable, even though empty
people = []

#Creates a ruby file out of the existing csv file, right?
CSV.open('mailingList.csv', 'r', ?,, ?\r) { |row| people << row }

#can define CSV.open as a variable "x" if you want it to be easier to use x.count or x.each?
x=CSV.open('mailingList.csv', 'r', ?,, ?\r)

#___________________________________________________________________________________________
#
Creates a ruby file out of the existing csv file, right?
CSV.open('newList21.csv', 'r', ?,, ?\r) { |row| people << row }

#can define CSV.open as a variable "x" if you want it to be easier to use x.count or x.each?
x=CSV.open('newList21.csv', 'r', ?,, ?\r)

#___________________________________________________________________________________________
#

#Defining our people dictionary 
people_dict = []
header = people.first 

people.each do |row|
    person = {}
    i = 0
    row.each do |col|
        person[header[i]] = row[i]
        i += 1
    end
    people_dict << person
end

#___________________________________________________________________________________________
#

#take out the first row of people (the header row) before you clean it up
header = people.first
people.delete(header)

#___________________________________________________________________________________________
#

#Original, which works: Skipping over the duplicate addresses
people_cleaned_up = {}
duplicates = []

people_dict.each do |person|
    k = person["Street Address Proper"] #make this the address
    v = person #make this be everything else
    next if k.nil?
    k.gsub!(/St\.?$/, 'Street')
    k.gsub!(/Ave\.?$/, 'Avenue')
    k.gsub!(/Ct\.?$/, 'Court')
    k.gsub!(/Pl\.?$/, 'Place')
    k.gsub!(/Terr\.?$/, 'Terrace')
    k.gsub!(/W\.?$/, 'West')
    k.gsub!(/E\.?$/, 'East')
    k.gsub!(/Dr\.?$/, 'Drive')
    k.gsub!(/Ln\.?$/, 'Lane')
    k.gsub!(/Sq\.?$/, 'Square')

    #look for existing entries, if the same you won't put them in the dictionary.
    unless people_cleaned_up.keys.include?(k)
        people_cleaned_up[k] = v
    else
        duplicates << v
    end
end

#1. Didn't like the 11 arguments/parameters for v
people_cleaned_up = {}
duplicates = []

people_dict.each do |person|
    k = person["Street Address Proper"] #make this the address
    v = person["First Name", "Last Name", "Address 2", "Organization", "City Proper", "State", "Type of Person", "HH reference", "Update Options", "Volunteer","Volunteer Interest"] 
    
    next if k.nil?
    k.gsub!(/St\.?$/, 'Street')
    k.gsub!(/Ave\.?$/, 'Avenue')
    k.gsub!(/Ct\.?$/, 'Court')
    k.gsub!(/Pl\.?$/, 'Place')
    k.gsub!(/Terr\.?$/, 'Terrace')
    k.gsub!(/W\.?$/, 'West')
    k.gsub!(/E\.?$/, 'East')
    k.gsub!(/Dr\.?$/, 'Drive')
    k.gsub!(/Ln\.?$/, 'Lane')
    k.gsub!(/Sq\.?$/, 'Square')

    #look for existing entries, if the same you won't put them in the dictionary.
    unless people_cleaned_up.keys.include?(k)
        people_cleaned_up[k] = v
    else
        duplicates << v
    end
end

#Only resulted in the k and v values
people_cleaned_up = {}
duplicates = []

people_dict.each do |person|
    k = person["Street Address Proper"] #make this the address
    v = person["First Name"] 
    a = person["Last Name"] 
    b = person["Address 2"] 
    c = person["Organization"] 
    d = person["City Proper"] 
    e = person["State"] 
    f = person["Type of Person"] 
    g = person["HH reference"] 
    h = person["Update Options"] 
    i = person["Volunteer"] 
    j = person["Volunteer Interest"] 

    next if k.nil?
    k.gsub!(/St\.?$/, 'Street')
    k.gsub!(/Ave\.?$/, 'Avenue')
    k.gsub!(/Ct\.?$/, 'Court')
    k.gsub!(/Pl\.?$/, 'Place')
    k.gsub!(/Terr\.?$/, 'Terrace')
    k.gsub!(/W\.?$/, 'West')
    k.gsub!(/E\.?$/, 'East')
    k.gsub!(/Dr\.?$/, 'Drive')
    k.gsub!(/Ln\.?$/, 'Lane')
    k.gsub!(/Sq\.?$/, 'Square')

    #look for existing entries, if the same you won't put them in the dictionary.
    unless people_cleaned_up.keys.include?(k)
        people_cleaned_up[k] = v
    else
        duplicates << v
    end
end

#Only resulted in the k value and the last v value
people_cleaned_up = {}
duplicates = []

people_dict.each do |person|
    k = person["Street Address Proper"] #make this the address
    v = person["First Name"] 
    v = person["Last Name"] 
    v = person["Address 2"] 
    v = person["Organization"] 
    v = person["City Proper"] 
    v = person["State"] 
    v = person["Type of Person"] 
    v = person["HH reference"] 
    v = person["Update Options"] 
    v = person["Volunteer"] 
    v = person["Volunteer Interest"] 

    next if k.nil?
    k.gsub!(/St\.?$/, 'Street')
    k.gsub!(/Ave\.?$/, 'Avenue')
    k.gsub!(/Ct\.?$/, 'Court')
    k.gsub!(/Pl\.?$/, 'Place')
    k.gsub!(/Terr\.?$/, 'Terrace')
    k.gsub!(/W\.?$/, 'West')
    k.gsub!(/E\.?$/, 'East')
    k.gsub!(/Dr\.?$/, 'Drive')
    k.gsub!(/Ln\.?$/, 'Lane')
    k.gsub!(/Sq\.?$/, 'Square')

    #look for existing entries, if the same you won't put them in the dictionary.
    unless people_cleaned_up.keys.include?(k)
        people_cleaned_up[k] = v
    else
        duplicates << v
    end
end

#Only resulted in the k and v values
people_cleaned_up = {}
duplicates = []

people_dict.each do |person|
    k = person["Street Address Proper"] #make this the address
    v = person["First Name"] 
    a = person["Last Name"] 
    b = person["Address 2"] 
    c = person["Organization"] 
    d = person["City Proper"] 
    e = person["State"] 
    f = person["Type of Person"] 
    g = person["HH reference"] 
    h = person["Update Options"] 
    i = person["Volunteer"] 
    j = person["Volunteer Interest"] 

    next if k.nil?
    k.gsub!(/St\.?$/, 'Street')
    k.gsub!(/Ave\.?$/, 'Avenue')
    k.gsub!(/Ct\.?$/, 'Court')
    k.gsub!(/Pl\.?$/, 'Place')
    k.gsub!(/Terr\.?$/, 'Terrace')
    k.gsub!(/W\.?$/, 'West')
    k.gsub!(/E\.?$/, 'East')
    k.gsub!(/Dr\.?$/, 'Drive')
    k.gsub!(/Ln\.?$/, 'Lane')
    k.gsub!(/Sq\.?$/, 'Square')

#look for existing entries, if the same you won't put them in the dictionary.
    unless people_cleaned_up.keys.include?(k)
        people_cleaned_up[k] = v, a, b, c, d, e, f, g, h, i, j
    else
        duplicates << v, a, b, c, d, e, f, g, h, i, j
    end
end

#TRY THIS NEW ONE Skipping over the duplicate addresses - only took the k and v values
people_cleaned_up = {}
duplicates = []

people_dict.each do |person|
    k = person["Street Address Proper"] #make this the address
    v = person["First Name"] 
    v = person["Last Name"] 
    v = person["Address 2"] 
    v = person["Organization"] 
    v = person["City Proper"] 
    v = person["State"] 
    v = person["Type of Person"] 
    v = person["HH reference"] 
    v = person["Update Options"] 
    v = person["Volunteer"] 
    v = person["Volunteer Interest"] 

    next if k.nil?
    k.gsub!(/St\.?$/, 'Street')
    k.gsub!(/Ave\.?$/, 'Avenue')
    k.gsub!(/Ct\.?$/, 'Court')
    k.gsub!(/Pl\.?$/, 'Place')
    k.gsub!(/Terr\.?$/, 'Terrace')
    k.gsub!(/W\.?$/, 'West')
    k.gsub!(/E\.?$/, 'East')
    k.gsub!(/Dr\.?$/, 'Drive')
    k.gsub!(/Ln\.?$/, 'Lane')
    k.gsub!(/Sq\.?$/, 'Square')

    #look for existing entries, if the same you won't put them in the dictionary.
    unless people_cleaned_up.keys.include?(k)
        people_cleaned_up[k] = v, a, b, c, d, e, f, g, h, i, j
    else
        duplicates << v, a, b, c, d, e, f, g, h, i, j
    end
end

#___________________________________________________________________________________________
#

#this did not work
HEADERS = [:titles, :identifier, ...]
def end_document
  # with ruby 1.8.7
  File.open("mailingList.csv", "ab") do |f|
    csv = CSV.generate_line(HEADERS.map { |h| @mailingList[h] })
    csv << "\n"
    f.write(csv)
  end
end

#this worked
CSV.open("newList2.csv", "w") do |csv|
     csv << ["people_cleaned_up"]
end

#To create a multi-row, multi-col. csv you'd do something like this:

CSV.open("newList2.csv", "w") do |csv|
     csv << ["row1 col1", "row1 col2, etc..."]
     csv << ["row2 col1", "row2 col2, etc..."]
end

#For lots of rows, you'd want to use a loop:

CSV.open("newList2.csv", "w") do |csv|
     [1,2,3,4].each do |i|
          csv << ["row#{i} col1", "row#{i} col2, etc..."]
     end
end

#USE THIS need to figure out grabbing data from "people_cleaned_up", not just the name value
people_cleaned_up.each do |k, v|
   puts k, v
end

#tried and didn't work
CSV.open("newList3.csv", "w") do |csv|
    people_cleaned_up.each do |k, v|
        puts k, v
    end
end 

#LAST USE THIS: this worked!!! after using the .each do block
CSV.open("newList11.csv", "w") do |csv|
    people_cleaned_up.each do |k, v|
        csv << [k, v] #this only grabbed k and then the last value of v that we listed out
    end
end 

#NEW and maybe working
people_cleaned_up.each do |k, v, a, b, c, d, e, f, g, h, i, j|
   puts k, v, a, b, c, d, e, f, g, h, i, j
end

CSV.open("newList4.csv", "w") do |csv|
    people_cleaned_up.each do |k, v, a, b, c, d, e, f, g, h, i, j|
        csv << [k, v, a, b, c, d, e, f, g, h, i, j]
    end
end #This only grabbed the k and the v value

