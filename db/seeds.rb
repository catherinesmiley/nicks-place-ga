# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

breakfast_menu = Menu.find_or_create_by(title: "Breakfast", description: "8:00-10:45 AM Fridays & 9:00-10:45 AM Saturdays")
lunch_dinner_menu = Menu.find_or_create_by(title: "Lunch/Dinner", description: "Hearty meals to fill you up any time of the day!")

starters = SubMenu.find_or_create_by(name: "Starters", menu: lunch_dinner_menu)
salads = SubMenu.find_or_create_by(name: "Salads", menu: lunch_dinner_menu)
baskets_and_plates = SubMenu.find_or_create_by(name: "Baskets & Plates", menu: lunch_dinner_menu)
kids_menu = SubMenu.find_or_create_by(name: "Kids Menu", menu: lunch_dinner_menu)
sandwiches_and_burgers = SubMenu.find_or_create_by(name: "Sandwiches & Burgers", menu: lunch_dinner_menu)
pastas = SubMenu.find_or_create_by(name: "Pastas", menu: lunch_dinner_menu)
beverages = SubMenu.find_or_create_by(name: "Beverages", menu: lunch_dinner_menu)
week_day_specials = SubMenu.find_or_create_by(name: "Week Day Specials", menu: lunch_dinner_menu)
friday_saturday_night_specials = SubMenu.find_or_create_by(name: "Friday & Saturday Night Specials", menu: lunch_dinner_menu)

chef_salad = Meal.find_or_create_by(name: "Chef Salad", description: "Mixed Greens, Ham, Tomato, Hardboiled Egg, Cucumber & Cheese", price: 9)
fried_chicken_finger_basket = Meal.find_or_create_by(name: "Fried Chicken Finger Basket", description: "Served with Mac & Cheese, Green Beans, of Fries", price: 7.50)
grilled_chicken_sandwich = Meal.find_or_create_by(name: "Grilled Chicken Sandwich", description: "Served on a Bun with Mayo, Lettuce & Tomato", price: 8.50)

biscuits_and_gravy = Meal.find_or_create_by(name: "Biscuits & Gravy", description: "Served with Country Potatoes or Grits. Choice of Sausage or Bacon.", price: 7.50)
egg_and_cheese_biscuit_sandwich = Meal.find_or_create_by(name: "Egg & Cheese Biscuit Sandwich", description: "Served with Bacon or Sausage", price: 3.50)

MenuMeal.find_or_create_by(menu: breakfast_menu, meal: biscuits_and_gravy)
MenuMeal.find_or_create_by(menu: breakfast_menu, meal: egg_and_cheese_biscuit_sandwich)
MenuMeal.find_or_create_by(menu: lunch_dinner_menu, meal: chef_salad)
MenuMeal.find_or_create_by(menu: lunch_dinner_menu, meal: fried_chicken_finger_basket)
MenuMeal.find_or_create_by(menu: lunch_dinner_menu, meal: grilled_chicken_sandwich)

salads.meals << chef_salad 
baskets_and_plates.meals << fried_chicken_finger_basket
sandwiches_and_burgers.meals << grilled_chicken_sandwich