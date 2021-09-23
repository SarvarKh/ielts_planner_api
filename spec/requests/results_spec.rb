require 'rails_helper'

RSpec.describe 'Results API', type: :request do
  # add results owner
  let(:user) { create(:user) }
  let!(:results) { create_list(:result, 10, created_by: user.id) }
  let(:result_id) { results.first.id }
  # authorize request
  let(:headers) { valid_headers }

  describe 'GET /results' do
    # update request with headers
    before { get '/results', params: {}, headers: headers }

    # [...]
  end

  describe 'GET /results/:id' do
    before { get "/results/#{result_id}", params: {}, headers: headers }
    # [...]
  end
  # [...]
end

describe 'POST /results' do
  let(:valid_attributes) do
    # send json payload
    { title: 'Learn Elm', created_by: user.id.to_s }.to_json
  end

  context 'when request is valid' do
    before { post '/results', params: valid_attributes, headers: headers }
    # [...]
  end

  context 'when the request is invalid' do
    let(:invalid_attributes) { { title: nil }.to_json }
    before { post '/results', params: invalid_attributes, headers: headers }

    it 'returns status code 422' do
      expect(response).to have_http_status(422)
    end

    it 'returns a validation failure message' do
      expect(json['message'])
        .to match('Missing token')
    end
  end

  describe 'PUT /results/:id' do
    let(:valid_attributes) { { title: 'Shopping' }.to_json }

    context 'when the record exists' do
      before { put "/results/#{result_id}", params: valid_attributes, headers: headers }
      # [...]
    end
  end

  describe 'DELETE /results/:id' do
    before { delete "/results/#{result_id}", params: {}, headers: headers }
    # [...]
  end
end
