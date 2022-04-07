require "swagger_helper"

RSpec.describe "products", type: :request do
  path "/api/v1/products" do
    get("list products") do
      tags "Products"
      produces "application/json"

      response("200", "List of products") do
        run_test!
      end
    end
  end

  path "/api/v1/products/{id}" do
    get "Retrieves a products" do
      tags "Products"
      produces "application/json"
      parameter name: :id, in: :path, type: :string

      response "200", "category found" do
        let(:id) { Product.create(description: "text", price: 100, title: "foo").id }
        run_test!
      end

      response "404", "product not found" do
        let(:id) { "invalid" }
        run_test!
      end

      response "406", "unsupported accept header" do
        let(:'Accept') { "application/foo" }
        run_test!
      end
    end
  end
end
