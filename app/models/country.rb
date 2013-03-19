class Country < ActiveRecord::Base
  
  attr_accessible :name

  has_and_belongs_to_many :languages
  has_and_belongs_to_many  :campaigns

end
