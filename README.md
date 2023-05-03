# Store API
This is a simple Rails API for managing stores and products. It allows you to create stores, create products associated with stores, retrieve products by store, retrieve a specific product, and update a product's inventory.

## Prerequisites
To run this API, you'll need:

* Ruby 2.7 or higher
* Rails 7 or higher
* PostgreSQL 9.5 or higher
* Installation
* To install the API on your local machine, follow these steps:

Clone this repository to your local machine:
```
git clone https://github.com/your-username/store-api.git
```
Install the required gems:
```
cd store-api
bundle install
```
Create the PostgreSQL database:
```
rails db:create
```
Run the database migrations:

```
rails db:migrate
```

(Optional) Run the database seed file to populate the database with some sample data:
```
rails db:seed
```

Usage
To use the API, start the Rails server:


rails server
You can then use your favorite HTTP client (such as curl or Postman) to send requests to the API endpoints.

## API Endpoints
* POST /store: Create a new store
* POST /products: Create a new product
* GET /stores/:store_id/products: Retrieve all products associated with a store
* GET /stores/:store_id/products/:product_id: Retrieve a specific product associated with a store
* POST /stores/:store_id/products/:product_id/inventory: Update a specific product's inventory
* Example Requests
* Here are some example requests you can send to the API endpoints:

Create a new store:
```
curl -X POST -H "Content-Type: application/json" -d '{"name":"My Store","url":"https://mystore.com"}' 
http://localhost:3000/store
```

Create a new product:
```
curl -X POST -H "Content-Type: application/json" -d '{"name":"Product 1","sku":"ABC123","inventory_quantity":10,"inventory_updated_time":"2023-05-02T10:20:30Z","store_id":1}' 
http://localhost:3000/products
```

Retrieve all products associated with a store:
```
curl http://localhost:3000/stores/1/products
```
Retrieve a specific product associated with a store:

```
curl http://localhost:3000/stores/1/products/1
```
Update a specific product's inventory:

```
curl -X POST -H "Content-Type: application/json" -d '{"inventory_quantity":5}' 
http://localhost:3000/stores/1/products/1/inventory
```