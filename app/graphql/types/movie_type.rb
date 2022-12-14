module Types
  class MovieType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :title, String, null: true
    field :year, Integer, null: true
    field :genre, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
