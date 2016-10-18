class GraphqlController < ApplicationController
  protect_from_forgery  with: :null_session

  def create
    schema = GraphQL::Schema.new(query: QueryType, mutation: MutationRoot)
    result = schema.execute(params[:query])

    render json: result
  end
end
