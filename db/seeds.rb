# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_menus
    @breakfast_menu = Menu.find_or_create_by(title: "Breakfast", description: "8:00-10:45 AM Fridays & 9:00-10:45 AM Saturdays")
    @lunch_dinner_menu = Menu.find_or_create_by(title: "Lunch/Dinner")
  end
  
  def create_sub_menus
    sub_menu_names = [
        "Starters", "Salads", "Baskets & Plates", "Kids Menu", 
        "Sandwiches & Burgers", "Pastas", "Beverages", "Weekday Specials",
        "Friday & Saturday Night Specials"
    ]
  
    @sub_menus = {}
  
    sub_menu_names.each do |name|
        @sub_menus[name.downcase.gsub(' & ', '_and_').gsub(' ', '_').to_sym] = SubMenu.find_or_create_by(name: name, menu: @lunch_dinner_menu)
    end 
end

def create_meals
    meals_data = [
      {name: "Chef Salad", description: "Mixed Greens, Ham, Tomato, Hardboiled Egg, Cucumber & Cheese", price: 9, sub_menu: :salads},
      {name: "Fried Chicken Finger Basket", description: "Served with Mac & Cheese, Green Beans, or Fries", price: 7.50, sub_menu: :baskets_and_plates},
      {name: "Grilled Chicken Sandwich", description: "Served on a Bun with Mayo, Lettuce & Tomato", price: 8.50, sub_menu: :sandwiches_and_burgers}
    ]
  
    meals_data.each do |meal_data|
      meal = Meal.find_or_create_by(name: meal_data[:name], description: meal_data[:description], price: meal_data[:price])
      @sub_menus[meal_data[:sub_menu]].meals << meal
    end
end

  
  def create_side_options
    weekly_sides = ['Fries', 'Coleslaw', 'Mashed Potatoes']
    @side_option_records = weekly_sides.map { |side_name| SideOption.find_or_create_by(name: side_name) }
  end
  
  def create_specials
    specials = [
        { name: 'Cheeseburger', price: 8.00, day_of_week: 1 },
        { name: 'Pork Chop', price: 8.50, choice: 'fried or grilled', day_of_week: 2 },
        { name: 'Hamburger Steak', price: 8.00, day_of_week: 3 },
        { name: 'Meatloaf', price: 8.00, day_of_week: 4 },
        { name: 'Ribs', price: 8.50, day_of_week: 5 }
    ]
    
    specials.each do |special_data|
        special = Special.find_or_create_by(special_data)
        special.side_options << @side_option_records
    end
  end
  
  create_menus
  create_sub_menus
  create_meals
  create_side_options
  create_specials
  