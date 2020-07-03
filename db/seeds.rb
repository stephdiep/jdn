User.create!(name: "Stephanie", email: "steph@jdn.org", password: "stephane", admin: true)
User.create!(name: "Christine", email: "chris@jdn.org", password: "christian", admin: true)
User.create!(name: "Brenda", email: "bren@jdn.org", password: "brandon", admin: true)
puts("All users created.")

Cash.create!(value: 251.95, description: 'Fonds initial investi 2019', category: 'credit')
Cash.create!(value: 92.71, description: 'Restant JdN19', category: 'credit')
puts("All cashes created.")

