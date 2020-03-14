class Api::V1::QuotesController < Api::ApplicationController
  
  skip_before_action :authenticate_request
  
  def index
    quotes = Quote.all.joins(:author)
    quotes = quotes.map do |quote|
      { 
        id: quote.id, 
        name: quote.content, 
        source: quote.source, 
        details: quote.details, 
        author: { id: quote.author.id, name: quote.author.name }
      }
    end
    
    render json: { results: quotes }.to_json, status: :ok
  end
end