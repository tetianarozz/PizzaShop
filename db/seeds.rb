User.delete_all
User.create(email: "admin@gmail.com", username: "admin", password: "admin111", role: 1)

Category.delete_all
Category.create(title: "pizza")
Category.create(title: "appetizers")
Category.create(title: "drinks")

Product.delete_all
Product.create(title: "Pepperoni with bacon", description: "Crisp & Curl Pepperoni, Fire Roasted Red Onions, Plump Plum Tomato Sauce, Mozzarella & Pecorino", price: 10, category_id: 1, image: "pepperoni.png")
Product.create(title: "Vegetable with mushrooms", description: "Mushrooms, Rustic Plum Tomato Sauce, Basil, Oregano, Pecorino, Olive Oil, Mozzarella", price: 9, category_id: 1, image: "vegetable.png")
Product.create(title: "Three cheeses", description: "Crushed Tomato Sauce, Fresh Mozzarella, Basil", price: 12, category_id: 1, image: "three_cheeses.png")


Product.create(title: "Buffalo chicken wings", description: "Chicken wings with author's sauce BUFFALO", price: 8, category_id: 2, image: "buffalo_chicken_wings.png")
Product.create(title: "Fries", description: "Crispy french fries with sea salt. 150г", price: 5, category_id: 2, image: "fries.png")

Product.create(title: "Coca-Cola", description: "Coca-Cola 0,5 l.", price: 2, category_id: 3, image: "coca-cola.png")
Product.create(title: "Fanta", description: "Fanta 0,5 l.", price: 2, category_id: 3, image: "fanta.png")

LineItem.delete_all
LineItem.create(quantity: 2, product_id: 1, order_id: 1)
LineItem.create(quantity: 1, product_id: 4, order_id: 1)
LineItem.create(quantity: 3, product_id: 7, order_id: 1)

LineItem.create(quantity: 1, product_id: 2, order_id: 2)
LineItem.create(quantity: 2, product_id: 5, order_id: 2)

LineItem.create(quantity: 1, product_id: 3, order_id: 3)
LineItem.create(quantity: 2, product_id: 5, order_id: 3)
LineItem.create(quantity: 2, product_id: 7, order_id: 3)

LineItem.create(quantity: 2, product_id: 2, order_id: 4)
LineItem.create(quantity: 3, product_id: 4, order_id: 4)
LineItem.create(quantity: 5, product_id: 6, order_id: 4)

LineItem.create(quantity: 1, product_id: 1, order_id: 5)
LineItem.create(quantity: 1, product_id: 6, order_id: 5)


Order.delete_all
Order.create(user_name: "Ivan", user_address: "66 Chapel Drive West Des Moines", user_number: "0937894561", line_items_attributes: [{product_id: 1, quantity: 2}, {product_id: 4, quantity: 1}, {product_id: 7, quantity: 3}])
Order.create(user_name: "John", user_address: "2 Nichols Road West Chester", user_number: "0507530000", line_items_attributes: [{product_id: 2}, {product_id: 5}])
Order.create(user_name: "Marry", user_address: "8869 Grove Court King Of Prussia", user_number: "0937532288", line_items_attributes: [{product_id: 3}, {product_id: 5}, {product_id: 7}])
Order.create(user_name: "Emma", user_address: "7633 Central Ave. Elk Grove Village", user_number: "0933355753", line_items_attributes: [{product_id: 2}, {product_id: 4}, {product_id: 6}])
Order.create(user_name: "Clarice", user_address: "48 Paris Hill Ave. Bismarck", user_number: "0967755553", line_items_attributes: [{product_id: 1}, {product_id: 6}])
