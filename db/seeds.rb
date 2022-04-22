User.delete_all
User.create(email: "admin@gmail.com", username: "admin", password: "admin111", role: 1)

Category.delete_all
Category.create(title: "first category")
Category.create(title: "second category")

Product.delete_all
Product.create(title: "new_product", description: "some text", price: 30, category_id: 1)
Product.create(title: "product 2", description: "some text", price: 20, category_id: 2)
Product.create(title: "product 3", description: "some text", price: 100, category_id: 1)

Order.delete_all
Order.create(user_name: "Name", user_address: "address", user_number: "0937894561", line_items_attributes: [{product_id: 1},{product_id: 2}, {product_id: 3}])

LineItem.delete_all
LineItem.create(quantity: 2, product_id: 1, order_id: 1)
