class Api::V1::QuotesController < Api::ApplicationController
  
  skip_before_action :authenticate_request
  
  def index
    quotes = Quote.all
    quotes = quotes.map do |quote|
      { id: quote.id, name: quote.content }
    end
    
    render json: { results: quotes }.to_json, status: :ok
  end
end