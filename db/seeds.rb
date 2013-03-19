# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
%w(Ukraine Russia Germany Poland).each do |country|
  Country.create name: country
end

%w(Ukrainian Russian German Polish Turkish English).each do |lang|
  Language.create name: lang
end


