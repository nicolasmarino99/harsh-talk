store1 = Store.create(name: "Store 1", url: "http://store1.com")
store2 = Store.create(name: "Store 2", url: "http://store2.com")

product1 = Product.create(name: "Product 1", sku: "SKU1", inventory_quantity: 10, inventory_updated_time: Time.now, store_id: store1.id)
product2 = Product.create(name: "Product 2", sku: "SKU2", inventory_quantity: 5, inventory_updated_time: Time.now, store_id: store1.id)
product3 = Product.create(name: "Product 3", sku: "SKU3", inventory_quantity: 20, inventory_updated_time: Time.now, store_id: store2.id)