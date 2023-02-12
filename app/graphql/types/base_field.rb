module Types
  class BaseField < GraphQL::Schema::Field
    argument_class Types::BaseArgument

    def authorized?(obj, args, context)
      auth_directive = self.directives.find { |d| d.graphql_name == "auth" }
      return true if auth_directive.nil?

      role = auth_directive.arguments[:role]
      current_user = context[:current_user]
      unless current_user.role == role
        raise GraphQL::ExecutionError, "You don't have permission to do this"
      end

      true
    end
  end
end
