# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
User.create(email: 'wen@gmail.com', username: 'wenvo', password: '123456')

Event.create(name: "hakim", user_id: User.first.id)