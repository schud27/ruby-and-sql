# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

apple = Company.where({name: "Apple"})[0]

# 2. create 1-2 new contacts for each company (they can be made up)

values = { 
    first_name: "Andy" , 
    last_name:"Jassy", 
    email:"andy@amazon.com", 
    phone_number:212-323-4545, 
    company_id: apple.id }

Andy = Contact.new(values)
Andy.save

values = { 
    first_name: "Craig" , 
    last_name:"Federighi", 
    email:"craig@apple.com", 
    phone_number:234-124-3333, 
    company_id: 76 }

Craig = Contact.new(values)
Craig.save

values = { 
    first_name: "Elon" , 
    last_name:"Musk", 
    email:"elon@tesla.com", 
    phone_number:123-431-5678 , 
    company_id: 78 }

Elon = Contact.new(values)
Elon.save

values = { 
    first_name: "Tim" , 
    last_name:"Cook", 
    email:"tim@tesla.com", 
    phone_number:313-787-4314 , 
    company_id: apple.id }

Elon = Contact.new(values)
Elon.save

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

puts Contact.all.count

andy = Contact.where({first_name: "Andy"})[0]

puts andy.first_name
puts andy.last_name
puts andy.email

craig = Contact.where({first_name: "Craig"})[0]

puts craig.first_name
puts craig.last_name
puts craig.email

# ---------------------------------
# Contacts: 4
puts "Contacts: #{Contact.all.count}"
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
contacts = Contact.all
for contact in contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end
