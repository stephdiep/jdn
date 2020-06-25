names = ['Aria', 'Kent', 'Brenda', 'Christine', 'Thu Hong', 'Lan']

names.each do |name|
  Ticket.create!(name: name)
end

puts("Created all tickets.")