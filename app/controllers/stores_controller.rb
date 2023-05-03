class StoresController < ApplicationController
  def create
    store = Store.new(store_params)
    if store.save
      render json: store, status: :created
    else
      render json: { error: store.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def store_params
    params.require(:store).permit(:name, :url)
  end
end