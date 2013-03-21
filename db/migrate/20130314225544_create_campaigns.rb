class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.datetime :date_start
      t.datetime :date_end
      t.string :name
      t.text :countries

      t.timestamps
    end
  end
end
