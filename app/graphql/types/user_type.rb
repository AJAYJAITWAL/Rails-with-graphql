module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :movies_count, Integer, null: true
    field :movies, [Types::MovieType], null: true

    def movies_count
      object.movies.size
    end
  end
end
