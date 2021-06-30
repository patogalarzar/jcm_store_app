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

stores = Store.create!([
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

p "Created #{Store.count} stores"

categories = Category.create([
  {
    name: "Programmatic"
  },
  {
    name: "Retargeting"
  },
  {
    name: "Search Ads"
  },
  {
    name: "Audience"
  }
])

p "Created #{Category.count} categories"

Keyword.create([
  {
    name: "effective",
    category: categories[1]
  },
  {
    name: "algorithms",
    category: categories[1]
  },
  {
    name: "purchase",
    category: categories[1]
  },
  {
    name: "ad placement",
    category: categories[1]
  },
  {
    name: "transformation",
    category: categories[2]
  },
  {
    name: "users",
    category: categories[2]
  },
  {
    name: "buyers",
    category: categories[2]
  },
  {
    name: "performance",
    category: categories[3]
  },
  {
    name: "SEA",
    category: categories[3]
  },
  {
    name: "campaings",
    category: categories[3]
  },
  {
    name: "tracking",
    category: categories[4]
  },
  {
    name: "GDPR",
    category: categories[4]
  },
  {
    name: "compliance",
    category: categories[4]
  },
  {
    name: "by design",
    category: categories[4]
  }
])

p "Created #{Keyword.count} keywords"

products = Product.create([
  {
    name: "Display Banners",
    color: "white",
    size: "<150KB",
    price: "99,99",
    category: categories[1]
  },
  {
    name: "Native Advertising",
    color: "purple",
    size: "not specified",
    price: "49,99",
    category: categories[1]
  },
  {
    name: "High-Impact Landing Pages",
    color: "client specified",
    size: "not specified",
    price: "499,99",
    category: categories[1]
  },
  {
    name: "Push Notifications",
    color: "none",
    size: "not specified",
    price: "9,99",
    category: categories[1]
  },
  {
    name: "Retargeting (RTG)",
    color: "white",
    size: "not specified",
    price: "19,99",
    category: categories[2]
  },
  {
    name: "Keyword Campaigns",
    color: "none",
    size: "not specified",
    price: "29,99",
    category: categories[3]
  },
  {
    name: "Brand Name/Generic Search Terms",
    color: "none",
    size: "not specified",
    price: "29,99",
    category: categories[3]
  },
  {
    name: "Remarketing Campaigns",
    color: "none",
    size: "not specified",
    price: "29,99",
    category: categories[3]
  },
  {
    name: "International Campaigns",
    color: "none",
    size: "not specified",
    price: "49,99",
    category: categories[3]
  },
  {
    name: "Additional Channel Campaigns",
    color: "none",
    size: "not specified",
    price: "49,99",
    category: categories[3]
  },
])

p "Created #{Product.count} products"
