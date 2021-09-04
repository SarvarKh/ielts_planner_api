# # spec/requests/results_spec.rb
# require 'rails_helper'

# RSpec.describe 'Results API', type: :request do
#   # initialize test data
#   let!(:user) { create(:user) }
#   let!(:results) { create_list(:result, 10, user_id: user.id) }
#   let(:result_id) { results.first.id }

#   # authorize request
#   let(:headers) { valid_headers }

#   # Test suite for GET /results
#   describe 'GET /results' do
#     # make HTTP get request before each example
#     before { get '/results' }

#     it 'returns results' do
#       # Note `json` is a custom helper to parse JSON responses
#       expect(json).not_to be_empty
#       expect(json.size).to eq(10)
#     end

#     it 'returns status code 200' do
#       expect(response).to have_http_status(200)
#     end
#   end

#   # Test suite for GET /results/:id
#   describe 'GET /results/:id' do
#     before { get "/results/#{result_id}" }

#     context 'when the record exists' do
#       it 'returns the result' do
#         expect(json).not_to be_empty
#         expect(json['id']).to eq(result_id)
#       end

#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end
#     end

#     context 'when the record does not exist' do
#       let(:result_id) { 100 }

#       it 'returns status code 404' do
#         expect(response).to have_http_status(404)
#       end

#       it 'returns a not found message' do
#         expect(response.body).to match(/Couldn't find Result/)
#       end
#     end
#   end

#   # Test suite for POST /results
#   describe 'POST /results' do
#     # valid payload
#     let(:valid_attributes) { { title: 'Learn Elm', created_by: '1' } }

#     context 'when the request is valid' do
#       before { post '/results', params: valid_attributes }

#       it 'creates a result' do
#         expect(json['title']).to eq('Learn Elm')
#       end

#       it 'returns status code 201' do
#         expect(response).to have_http_status(201)
#       end
#     end

#     context 'when the request is invalid' do
#       before { post '/results', params: { title: 'Foobar' } }

#       it 'returns status code 422' do
#         expect(response).to have_http_status(422)
#       end

#       it 'returns a validation failure message' do
#         expect(response.body)
#           .to match(/Validation failed: Created by can't be blank/)
#       end
#     end
#   end

#   # Test suite for PUT /results/:id
#   describe 'PUT /results/:id' do
#     let(:valid_attributes) { { title: 'Shopping' } }

#     context 'when the record exists' do
#       before { put "/results/#{result_id}", params: valid_attributes }

#       it 'updates the record' do
#         expect(response.body).to be_empty
#       end

#       it 'returns status code 204' do
#         expect(response).to have_http_status(204)
#       end
#     end
#   end

#   # Test suite for DELETE /results/:id
#   describe 'DELETE /results/:id' do
#     before { delete "/results/#{result_id}" }

#     it 'returns status code 204' do
#       expect(response).to have_http_status(204)
#     end
#   end
# end