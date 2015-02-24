require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  set_content_type 'application/json'

  options = [:show]
  json_attributes = FactoryGirl.attributes_for(:customer).keys

  before :all do
    @model = Customer
    @resource = FactoryGirl.create(:customer)
  end

  it_behaves_like "a REST controller", options, json_attributes
end
