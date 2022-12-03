# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CountController do
  describe 'GET input' do
    context 'check main page' do
      it 'has a 200 status code' do
        get :input
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'GET result' do
    context 'when params are valid' do
      before { get :result, params: { number: 3, string_array: '1 2 3' } }

      it 'returns http success' do
        expect(response.status).to eq(200)
      end

      it 'renders result templates' do
        expect(response).to render_template(:result)
      end
    end

    context 'when params are invalid' do
      before { get :result, params: { number: 2, string_array: '1 2 3' } }

      it 'returns http unsuccess' do
        expect(response.status).to eq(302)
      end
    end
  end
end
