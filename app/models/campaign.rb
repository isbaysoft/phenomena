class Campaign < ActiveRecord::Base

  attr_accessible :cities, :name, :countries_ids

  has_and_belongs_to_many  :countries

  serialize :cities, JSON

  def countries_ids= value
    ccc = Country.find value.map {|m| m[:id]}
    self.countries = ccc
  end

  before_save :aaa

  def aaa
    self.cities = self.countries.to_json
  end

end
