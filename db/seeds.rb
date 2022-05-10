puts "🌱 Seeding spices..."

    Category.create([{name: "House Work"}, {name: "Yard Work"}, {name: "Errands"}, {name: "Shopping"}])
    Person.create([{name: "Shane"}, {name: "Amy"}, {name: "Nick"}])
    Task.create([{name: "Take out trash", category_id: 1, person_id: 3}, {name: "Pull weeds", category_id: 2, person_id: 1}, {name: "Buy groceries", category_id: 4, person_id: 2}, {name: "Drop off mail", category_id: 3, person_id: 2}])
    

puts "✅ Done seeding!"
