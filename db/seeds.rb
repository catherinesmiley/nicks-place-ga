# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

breakfast_menu = Menu.create(title: "Breakfast", description: "8:00-10:45 AM Fridays & 9:00-10:45 AM Saturdays")
lunch_dinner_menu = Menu.create(title: "Lunch/Dinner", description: "Hearty meals to fill you up any time of the day!")

biscuits_and_gravy = Meal.create(name: "Biscuits & Gravy", description: "Served with Country Potatoes or Grits. Choice of Sausage or Bacon.", price: 7.50)
egg_and_cheese_biscuit_sandwich = Meal.create(name: "Egg & Cheese Biscuit Sandwich", description: "Served with Bacon or Sausage", price: 3.50)

chef_salad = Meal.create(name: "Chef Salad", description: "Mixed Greens, Ham, Tomato, Hardboiled Egg, Cucumber & Cheese", price: 9)
fried_chicken_finger_basket = Meal.create(name: "Fried Chicken Finger Basket", description: "Served with Mac & Cheese, Green Beans, of Fries", price: 7.50)
grilled_chicken_sandwich = Meal.create(name: "Grilled Chicken Sandwich", description: "Served on a Bun with Mayo, Lettuce & Tomato", price: 8.50)

MenuMeal.create(menu: breakfast_menu, meal: biscuits_and_gravy)
MenuMeal.create(menu: breakfast_menu, meal: egg_and_cheese_biscuit_sandwich)
MenuMeal.create(menu: lunch_dinner_menu, meal: chef_salad)
MenuMeal.create(menu: lunch_dinner_menu, meal: fried_chicken_finger_basket)
MenuMeal.create(menu: lunch_dinner_menu, meal: grilled_chicken_sandwich)