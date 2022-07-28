module Types
  class StudentType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :phone, String, null: true
    field :address, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :total_name_char, Integer, null: true

    def total_name_char
      object.name.length
    end
  end
end
