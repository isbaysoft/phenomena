class LanguagesController < ApplicationController

  respond_to :json

  def index
    respond_with Language.all
  end
end
