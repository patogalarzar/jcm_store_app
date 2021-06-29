# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.destroy_all
Category.destroy_all
Product.destroy_all

Store.create!([
  {
    name: "JCM Berlin",
    street: "Stresemannstr. 123 C",
    number: "10963",
    zip_code: "ZC123456",
    city: "Berlin",
    country: "Germany"
  },
  {
    name: "JCM Guayaquil",
    street: "C.C. Buena Vista Plaza Torre 4 Ofic. 7-10 ",
    number: "123",
    zip_code: "ZC654321",
    city: "Guayquil",
    country: "Ecaudor"
  }
])

Category.create([
  {
    name: "Programmatic"
  },
  {
    name: "Retargeting"
  }
])

Keyword.create([
  {
    name: "algorithms",
    category_id: 1
  },
  {
    name: "transformation",
    category_id: 2
  }
])
