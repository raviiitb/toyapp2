require 'rest-client'
class Superman::MoviesController < ApplicationController
  def index
    params = { s: 'superman', type: 'movie' }
    params[:apikey] = Rails.application.secrets.api_key
    @movies = Rails.cache.fetch 'superman_movies' do
                JSON.parse(RestClient.get Rails.configuration.url, { params: params })
              end
  end
end

# Rails.application.secrets.api_key