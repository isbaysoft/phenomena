class CampaignsController < ApplicationController

  respond_to :json

  def index
    respond_with Campaign.all, include: :countries
  end

  def create
    respond_with Campaign.create params[:campaign]
  end

  def update
    campaign = Campaign.find params[:id]
    campaign.update_attributes params[:campaign]
    # ccc = Country.first
    # l1 = Language.first
    # l2 = Language.last
    # binding.pry
    # ccc.languages = [l1,l2]
    # campaign.cities = ccc.to_json(include: :languages)
    # campaign.save
    respond_with campaign
  end

end
