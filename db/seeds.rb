# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'モンキー君', email: 'engineer@email.com',password_digest: '123456')
User.create!(name: 'エレファント君', email: 'designer@email.com',password_digest: '123456')
User.create!(name: 'アルパカさん', email: 'alpaca@email.com',password_digest: '123456')
User.create!(name: 'ゴリラくん', email: 'gorilla@email.com',password_digest: '123456')
User.create!(name: 'キリンさん', email: 'celeb@email.com',password_digest: '123456')
