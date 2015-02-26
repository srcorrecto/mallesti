require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  set_content_type 'application/json'

  options = [:show, :index, :create, :update, :destroy]
  json_attributes = FactoryGirl.attributes_for(:project).keys

  before :all do
    @model = Project
    customer = FactoryGirl.create(:customer)
    @create_params = {customer_id: customer.id.to_s}
    @resource = FactoryGirl.create(:project, customer: customer)
    @list_options = {customer: customer}
    @index_params = {customer_id: customer.id.to_s}
    @first_page_resources = customer.projects
    @parameters = FactoryGirl.attributes_for(:project, customer_id: customer.id.to_s)
    @update_params = FactoryGirl.attributes_for(:project_update)
  end

  it_behaves_like "a REST controller", options, json_attributes

  context "special feature" do
    let(:customer1){ FactoryGirl.create(:customer) }
    let(:customer2){ FactoryGirl.create(:customer) }

    context "GET #index" do
      it "returns the correct tasks" do
        projects = FactoryGirl.create_list(:project, 2, customer: customer1)
        FactoryGirl.create_list(:project, 2, customer: customer2)

        get :index, customer_id: customer1.id.to_s
        expect(assigns(:projects).to_a).to match_array projects
      end
    end

    context "PUT #update" do
      it "should not update #customer_id" do
        project = FactoryGirl.create(:project, customer: customer1)

        put :update, id: project.id, project: { customer: customer2.id.to_s }
        project.reload

        expect(project.customer_id).to eql customer1.id
      end
    end
  end
end
