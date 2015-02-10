require 'rails_helper'

RSpec.describe Project, type: :model do
  context "Fields" do
    it { is_expected.to have_field(:name).of_type(String) }
    it { is_expected.to have_field(:description).of_type(String) }
  end

  context "Validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }

    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  end
end
