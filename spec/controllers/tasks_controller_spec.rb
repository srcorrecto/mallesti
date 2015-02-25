require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  set_content_type 'application/json'

  options = [:show, :index, :create, :update, :destroy]
  json_attributes = FactoryGirl.attributes_for(:task).keys

  before :all do
    @model = Task
    @resource = FactoryGirl.create(:task)
    @first_page_resources = Task.all
    @parameters = FactoryGirl.attributes_for(:task)
    @update_params = FactoryGirl.attributes_for(:task_update)
  end

  it_behaves_like "a REST controller", options, json_attributes
end
