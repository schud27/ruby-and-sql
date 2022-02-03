# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Company.all.count} companies."

# 2. create new companies

values = {
    name: "Apple", 
    url: "https://apple.com", 
    city: "Cupertino", 
    state: "CA"
}
company = Company.new(values)
company.save

puts "There are #{Company.all.count} companies."

values = {
    name: "Amazon", 
    url: "https://amazon.com", 
    city: "Seattle", 
    state: "WA"
}
company = Company.new(values)
company.save

puts "There are #{Company.all.count} companies."

values = {
    name: "Tesla", 
    url: "https://tesla.com", 
    city: "Santa Clara", 
    state: "CA"
}
company = Company.new(values)
company.save

puts "There are #{Company.all.count} companies."

company = Company.new
# company.write_attribute(:name, "Tesla")
company.name = "Tesla"

puts "There are #{Company.all.count} companies."

# 3. query companies table


puts Company.all.inspect
companies = Company.where({state: "CA",})
puts companies.inspect

apple = Company.where({state: "CA", name: "Apple"})[0]
puts companies.inspect

# 4. read column values from row

# 5. update attribute value
