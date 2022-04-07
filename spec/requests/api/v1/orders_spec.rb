require "swagger_helper"

RSpec.describe "orders", type: :request do
  path "/orders" do
    post "Creates a order" do
      tags "Order"
      consumes "application/json"
      parameter name: :order, in: :body, schema: {
        type: :object,
        properties: {
          user_name: { type: :string },
          user_address: { type: :string },
          user_number: { type: :integer },
          line_items_attributes: {
            type: :array,
            items: {
              properties: {
                quantity: { type: :string },
                product_id: { type: :integer }
              }
            },
          },
        },
        required: [ "user_name", "user_address", "user_number" ]
      }

      response "201", "blog created" do
        let(:order) { { user_name: "foo", user_address: "bar", user_number: 123 } }
        run_test!
      end

      response "422", "invalid request" do
        let(:order) { { user_name: "foo" } }
        run_test!
      end
    end
  end
end
