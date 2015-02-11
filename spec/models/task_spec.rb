require 'rails_helper'

RSpec.describe Task, type: :model do
  context "Document" do
    it { is_expected.to be_timestamped_document }
  end

  context "Fields" do
    it { is_expected.to have_field(:title).of_type(String) }
    it { is_expected.to have_field(:description).of_type(String) }
    it { is_expected.to have_field(:tag).of_type(Symbol) }
    it { is_expected.to have_field(:estimation).of_type(Float) }
  end

  context "Relations" do
    it { is_expected.to belong_to(:project).of_type(Project) }
  end

  context "Validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:estimation) }

    it {
      is_expected.to validate_inclusion_of(:tag).to_allow(
        [:design, :development, :error, :briefing, :production]
      )
    }

    it {
      is_expected.to validate_numericality_of(:estimation).greater_than(0.0)
    }
  end
end
