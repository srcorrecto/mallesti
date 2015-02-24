class CustomersController < ApplicationController
  respond_to :json

  def show
    @customer = Customer.find(params[:id])
    respond_with @customer
  end
end
