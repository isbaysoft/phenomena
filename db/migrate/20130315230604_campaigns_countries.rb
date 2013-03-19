class CampaignsCountries < ActiveRecord::Migration
  def change
    create_table :campaigns_countries do |t|
      t.integer :campaign_id
      t.integer :country_id
    end
  end
end
