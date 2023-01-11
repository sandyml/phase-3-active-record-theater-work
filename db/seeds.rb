puts "Deleting audition/role data..."
Audition.destroy_all
Role.destroy_all

puts "Creating Auditions..."
Audition.create([
 {actor: "Keanu Reaves", location: "California", phone: 1555555555, hired: "true", role_id: 1},
 {actor: "Angelina Jolie", location: "California", phone: 1555555551, hired: "true", role_id: 1},
 {actor: "Jennifer Aniston", location: "New York", phone: 1555555552, hired: "true", role_id: 2},
 {actor: "Ryan Reynolds", location: "New York", phone: 1555555553, hired: "false", role_id: 3},
])

puts "Creating Roles..."
Role.create([
 {character_name: "John Wick"},
 {character_name: "Maleficent"},
 {character_name: "Rachel"},
])

puts "Seeding is done, now ready to plant!"