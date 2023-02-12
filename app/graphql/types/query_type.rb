module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :test_field, String, null: false, directives: { Directives::Auth => { role: "manager" } }
    def test_field
      "Hello World!"
    end

    field :normal_field, String, null: false
    def normal_field
      "Hell World!"
    end
  end
end
