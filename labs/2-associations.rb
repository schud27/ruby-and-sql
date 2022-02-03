# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-associations.rb

# 1. write code to display each contact (you can reuse the previous lab's code) and include the contact's company name, e.g.:

values = { first_name: "Andy" , last_name:"Jassy", email:"andy@amazon.com", phone_number:9813247, company_id: 81 }

Andy = Contact.new(values)
Andy.save

values = { first_name: "Craig" , last_name:"Federighi", email:"craig@apple.com", phone_number:2341243, company_id: 80 }

Craig = Contact.new(values)
Craig.save

values = { first_name: "Elon" , last_name:"Musk", email:"elon@tesla.com", phone_number:1234314 , company_id: 82 }

Elon = Contact.new(values)
Elon.save

puts "Contacts: #{Contact.all.count}"

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com - Amazon.com, Inc.
# Craig Federighi - craig@apple.com - Apple Inc.
# Elon Musk - elon@tesla.com - Tesla, Inc.
# Tim Cook - tim@apple.com - Apple Inc.

# 2. similar to above, but this time organized by company, write code to display each company (name) and its contacts, e.g.:

companies = Company.all
for company in companies
    puts company.name
    contacts = company.contacts
    
    for contact in contacts
        puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
    end
    puts ""
end    

contacts = Contact.all
for contact in contacts
    puts "#{contact.company.name} - #{contact.first_name} #{contact.last_name} - #{contact.email} "
end


# ---------------------------------
# Apple Inc.
# Tim Cook - tim@apple.com
# Craig Federighi - craig@apple.com
#
# Amazon.com, Inc.
# Andy Jassy - andy@amazon.com
#
# Tesla, Inc.
# Elon Musk - elon@tesla.com
