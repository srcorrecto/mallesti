require 'rails_helper'

RSpec.describe Project, type: :model do
  context "Document" do
    it { is_expected.to be_timestamped_document }
  end

  context "Fields" do
    it { is_expected.to have_field(:name).of_type(String) }
    it { is_expected.to have_field(:description).of_type(String) }
  end

  context "Relations" do
    it { is_expected.to belong_to(:customer) }
    it { is_expected.to have_many(:tasks) }
  end

  context "Validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }

    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  end
end
