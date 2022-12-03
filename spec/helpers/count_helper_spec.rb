# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CountHelper do
  describe '#squares' do
    context 'returns correct array' do
      let!(:array) { [1, 2, 3] }
      let!(:result_array) { [[1]] }
      it 'when it is 1,2,3' do
        expect(helper.squares(array)).to eq(result_array)
      end
    end
  end
end
