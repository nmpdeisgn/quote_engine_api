class Api::V1::AuthorsController < Api::ApplicationController
  
    skip_before_action :authenticate_request
    
    def index
      authors = Author.all
      authors = authors.map do |author|
        { id: author.id, name: author.name }
      end
      
      render json: { results: authors }.to_json, status: :ok
    end
end