module Mutations
  class TestField < BaseMutation
    argument :id, ID, required: true
    payload_type String

    def resolve(id:)
      "test!"
    end
  end
end

