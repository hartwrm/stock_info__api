# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Company.create([
#   {name:"Coty Inc", symbol:'COTY'},
#   {name:"Xeros Corporation", symbol: "XRX"},
#   {name:"Chipotle Mexican Grill", symbol: "CMG"},
#   {name:"Cadence Design Systems", symbol:"CDNS"},
#   {name: "Anadarko Petroleum Corporation", symbol:"APC"},
#   {name:"Total System Services", symbol: "TSS"},
#   {name:"Dentsply Sirona Inc", symbol:"XRAY"},
#   {name:"Advanced Micro Devices", symbol:"AMD"},
#   {name:"MSCI", symbol:"MSCI"},
#   {name:"DISH Network Corporation", symbol:"DISH"}
#   ])

Price.create([
  {price: rand(22..44), date:2019_08_30, company_id: 10},
  {price: rand(22..44), date:2019_08_29, company_id: 10},
  {price:rand(22..44), date: 2019_08_28,company_id: 10},
  {price:rand(22..44), date:2019_08_27, company_id: 10},
  {price:rand(22..44), date:2019_08_26, company_id: 10},
  {price:rand(22..44), date: 2019_08_25, company_id: 10},
  {price:rand(22..44), date: 2019_08_24, company_id: 10},
  {price:rand(22..44), date: 2019_08_23, company_id: 10},
  {price:rand(22..44), date:2019_08_22, company_id: 10},
  {price: rand(22..44), date:2019_08_21, company_id: 10},
  {price:rand(22..44), date:2019_08_20, company_id: 10},
  {price:rand(22..44), date:2019_08_19, company_id: 10},
  {price:rand(22..44) , date:2019_08_18, company_id: 10},
  {price: rand(22..44), date: 2019_08_17,company_id: 10},
  {price: rand(22..44), date: 2019_08_16,company_id: 10},
  {price:rand(22..44), date: 2019_08_15,company_id: 10},
  {price:rand(22..44), date: 2019_08_14,company_id: 10},
  {price:rand(22..44), date: 2019_08_13,company_id: 10},
  {price: rand(22..44), date:2019_08_12, company_id: 10},
  {price: rand(22..44), date:2019_08_11, company_id: 10},
  {price:rand(22..44), date:2019_08_10, company_id: 10},
  {price:rand(22..44), date:2019_08_09, company_id: 10},
  {price: rand(22..44), date:2019_08_08, company_id: 10},
  {price: rand(22..44), date:2019_08_07, company_id: 10},
  {price: rand(22..44), date:2019_08_06, company_id: 10},
  {price: rand(22..44), date:2019_08_05, company_id: 10},
  {price: rand(22..44), date:2019_08_04, company_id: 10},
  {price: rand(22..44), date:2019_08_03, company_id: 10},
  {price: rand(22..44), date:2019_08_02, company_id: 10},
  {price: rand(22..44), date:2019_08_01, company_id: 10}
  ])

p "seeded db"
