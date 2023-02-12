class Directives::Auth < GraphQL::Schema::Directive
  argument :role, String
  locations FIELD_DEFINITION, OBJECT
end
