# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Account.destroy_all
User.destroy_all

user_one = User.create({ email: 'liz@gmail.com', password: 'password1', password_confirmation: 'password1' })
user_two = User.create({ email: 'sam@gmail.com', password: 'password2', password_confirmation: 'password2' })

user_one.accounts.create({ name: 'local', balance: 100.00 })
user_one.accounts.create({ name: 'savings', balance: 500.00 })
user_one.accounts.create({ name: 'offshore', balance: 400.00 })


user_two.accounts.create({ name: 'offshore', balance: 200.00 })