class Country < ActiveRecord::Base
  
  attr_accessible :name

  def as_json options = {}
    super(only: [:name])
  end

end
