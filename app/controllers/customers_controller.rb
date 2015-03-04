class CustomersController < ApplicationController
  respond_to :json

  def main
    render text: '', layout: 'application'
  end



  def show
    @customer = Customer.find(params[:id])
    respond_with @customer
  end

  def index
    @customers = Customer.all
    respond_with @customers
  end

  def create
    @customer = Customer.create(customer_params)
    respond_with @customer
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update_attributes(customer_params)
    respond_with @customer
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    respond_with @customer
  end

  private

  def customer_params
    params.require(:customer).permit(
      :name, :address, :town, :city, :country, :zip_code, :phone, :cif, :email
    )
  end
end
