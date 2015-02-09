require 'rails_helper'

RSpec.describe Project, type: :model do
  context "Fields" do
    it { should have_field(:name).of_type(String) }
    it { should have_field(:description).of_type(String) }
  end
end
