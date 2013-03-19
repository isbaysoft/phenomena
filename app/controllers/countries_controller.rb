class CountriesController < ApplicationController
  
  respond_to :json

  def index
    respond_with Country.all
  end

end
