class Campaign < ActiveRecord::Base

  attr_accessible :name, :date_start, :date_end, :countries

  serialize :countries, JSON

end
