# names = ['Aria', 'Kent', 'Brenda', 'Christine', 'Thu Hong', 'Lan']

# names.each do |name|
#   Ticket.create!(name: name)
# end

# puts("Created all tickets.")

User.create!(name: "Stephanie", email: "steph@jdn.org", password: "stephane", admin: true)
User.create!(name: "Christine", email: "chris@jdn.org", password: "christian", admin: true)
User.create!(name: "Brenda", email: "bren@jdn.org", password: "brandon", admin: true)