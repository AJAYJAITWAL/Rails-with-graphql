module Types
  class QueryType < Types::BaseObject
    # Get all users
    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    # Get a specific user
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end
    
    # Get all students
    field :students, [Types::StudentType], null: false
    def students
      Student.all
    end

    # Get a specific user
    field :student, Types::StudentType, null: false do
      argument :id, ID, required: true
    end
    def student(id:)
      Student.find(id)
    end
  
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
  end
end
