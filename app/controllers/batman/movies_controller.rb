require 'rest-client'
class Batman::MoviesController < ApplicationController
  def index
    params = { s: 'batman', type: 'movie' }
    params[:apikey] = Rails.application.secrets.api_key
    @movies = Rails.cache.fetch 'batman_movies' do
                JSON.parse(RestClient.get Rails.configuration.url, { params: params })
              end
  end
end

# Rails.application.secrets.api_key