require 'swagger_helper'

RSpec.describe 'categories', type: :request do

  path '/api/v1/categories' do

    get('list categories') do
      tags 'Categories'
      produces 'application/json'

      response('200', "List of categories") do
        run_test!
      end
    end
  end

  path '/api/v1//categories/{id}' do

    get 'Retrieves a category' do
      tags 'Categories'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string

      response '200', 'category found' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 title: { type: :string }
               },
               required: [ 'id', 'title' ]

        let(:id) { Category.create(title: 'foo').id }
        run_test!
      end

      response '404', 'category not found' do
        let(:id) { 'invalid' }
        run_test!
      end

      response '406', 'unsupported accept header' do
        let(:'Accept') { 'application/foo' }
        run_test!
      end
    end
  end
end
