class GraphqlController < ApplicationController
  protect_from_forgery  with: :null_session

  def index
  end

  def create
    schema = GraphQL::Schema.new(query: QueryType)
    result = schema.execute(params[:query])

    render json: result
  end

end
