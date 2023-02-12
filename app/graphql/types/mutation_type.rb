module Types
  class MutationType < Types::BaseObject
    field :test_field, mutation: Mutations::TestField, null: false, directives: { Directives::Auth => { role: "manager" } }
  end
end
