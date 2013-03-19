class CountriesLanguages < ActiveRecord::Migration
  def change
    create_table :countries_languages do |t|
      t.integer :country_id
      t.integer :language_id
    end
  end
end
