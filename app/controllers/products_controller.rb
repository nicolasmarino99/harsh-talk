class ProductsController < ApplicationController
	def index
    products = Product.where(store_id: params[:store_id])
    render json: products, status: :ok
  end

	def create
    product = Product.new(product_params)
		if product.save
    	render json: product, status: :created
		else
    	render json: { error: product.errors.full_messages }, status: :unprocessable_entity
    end
	end

	def show
    product = Product.find_by(store_id: params[:store_id], id: params[:product_id])
    if product
      render json: product, status: :ok
    else
      render json: { error: "Product not found" }, status: :not_found
    end
  end

	def update_inventory
    product = Product.find_by(store_id: params[:store_id], id: params[:product_id])
    if product
      product.inventory_quantity = params[:inventory_quantity]
      product.inventory_updated_time = Time.now
      if product.save
        render json: product, status: :ok
      else
        render json: { error: product.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { error: "Product not found" }, status: :not_found
    end
  end

	private

  def product_params
    params.require(:product).permit(:name, :sku, :inventory_quantity, :inventory_updated_time, :store_id)
  end
end
  