require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  set_content_type 'application/json'

  options = [:show, :index, :create, :update, :destroy]
  json_attributes = FactoryGirl.attributes_for(:project).keys

  before :all do
    @model = Project
    @resource = FactoryGirl.create(:project)
    @first_page_resources = Project.all
    @parameters = FactoryGirl.attributes_for(:project)
    @update_params = FactoryGirl.attributes_for(:project_update)
  end

  it_behaves_like "a REST controller", options, json_attributes
end
