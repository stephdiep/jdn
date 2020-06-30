# names = ['Aria', 'Kent', 'Brenda', 'Christine', 'Thu Hong', 'Lan']

# names.each do |name|
#   Ticket.create!(name: name)
# end

# puts("Created all tickets.")

# User.create!(name: "Stephanie", email: "steph@jdn.org", password: "stephane", admin: true)
# User.create!(name: "Christine", email: "chris@jdn.org", password: "christian", admin: true)
# User.create!(name: "Brenda", email: "bren@jdn.org", password: "brandon", admin: true)
# puts("All users created.")

# Cash.create!(value: 251.95, description: 'Fonds initial investi 2019', category: 'credit')
# Cash.create!(value: 92.71, description: 'Restant JdN19', category: 'credit')
# puts("All cashes created.")

Cash.create!(value: 10.00, description: 'Maman', category: 'credit', fund_2122: true)
Cash.create!(value: 120.15, description: 'Lan', category: 'credit', fund_2122: true)
Cash.create!(value: 50.00, description: 'Paul', category: 'credit', fund_2122: true)
puts("All cashes/funds created.")