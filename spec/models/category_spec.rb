require 'rails_helper'

# We use the described_class method to get the current context’s class.
# Then we use reflect_on_association method to check that it returns a correct association.

RSpec.describe Category, type: :model do
  context 'Associations' do
    it 'has_many posts' do
      association = described_class.reflect_on_association(:posts)
      expect(association.macro).to eq :has_many
    end
  end
end
