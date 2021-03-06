courses = [
  'Astronomy',
  'Charms',
  'Dark Arts',
  'Defence Against the Dark Arts',
  'Flying',
  'Herbology',
  'History of Magic',
  'Muggle Studies',
  'Potions',
  'Transfiguration'
]
courses.each { |c| Course.create!(name: c) }

houses = %w(gryffindor hufflepuff ravenclew slytherin)
houses.each { |h| House.create(name: h) }

kids = [
  'Harry Potter',
  'Ron Weasley',
  'Hermione Granger',
  'Colin Creevey',
  'Seamus Finnigan',
  'Hannah Abbott',
  'Pansy Parkinson',
  'Zacharias Smith',
  'Blaise Zabini',
  'Draco Malfoy',
  'Dean Thomas',
  'Millicent Bulstrode',
  'Terry Boot',
  'Ernie Macmillan',
  'Vincent Crabbe',
  'Gregory Goyle',
  'Lavender Brown',
  'Katie Bell',
  'Parvati Patil',
  'Dennis Creevey',
  'Eloise Midgen',
  'Ritchie Coote',
  'Jack Sloper',
  'Victoria Frobisher',
  'Geoffrey Hooper',
  'Andrew Kirke',
  'Demelza Robins',
  'Cormac McLaggen',
  'Neville Longbottom',
  'Ginny Weasley',
  'Romilda Vane',
  'Natalie McDonald',
  'Jimmy Peakes',
  'Euan Abercrombie',
  'Mary MacDonald',
  'Penelope Clearwater',
  'Roger Davies',
  'Eddie Carmichael',
  'Cho Chang',
  'Marietta Edgecombe',
  'Mandy Brocklehurst',
  'Michael Corner',
  'Stephen Cornfoot',
  'Kevin Entwhistle',
  'Anthony Goldstein',
  'Su Li',
  'Morag McDougal',
  'Padma Patil',
  'Lisa Turpin',
  'Luna Lovegood',
  'Orla Quirke',
  'Stewart Ackerley',
  'Susan Bones',
  'Eleanor Branstone',
  'Owen Cauldwell',
  'Justin Finch-Fletchley',
  'Wayne Hopkins',
  'Megan Jones',
  'Laura Madley',
  'Kevin Whitby',
  'Rose Zeller',
  'Terence Higgs',
  'Adrian Pucey',
  'Tracey Davis',
  'Daphne Greengrass',
  'Theodore Nott',
  'Astoria Greengrass',
  'Malcolm Baddock',
  'Graham Pritchard'
]
age_range = (10..18).to_a
kids.each do |k|
  full_name = k.split
  Student.create(
    first_name: full_name[0],
    last_name: full_name[1],
    age: age_range.sample,
    courses: Course.all.sample(rand(courses.count)),
    house: House.all.sample
  )
end
