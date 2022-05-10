puts "🌱 Seeding spices..."

    Priority.create([{name: "Emergency", timeframe: "1 hour"}{name: "High", timeframe: "3 hours"}, {name: "Medium", timeframe: "6 hours"}, {name: "Low", timeframe: "24 hours"}])
    Category.create([{name: "Yard work"}, {name: "House work"}, {name: "Errands"}])
    Task.create([{name: "Take out trash", priority: 1, category: 2}, {name: "Pull weeds", priority: 3, category: 1}, {name: "Buy groceries", priority: 4, category: 3}])

puts "✅ Done seeding!"
