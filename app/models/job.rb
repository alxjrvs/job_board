class Job < ActiveRecord::Base
  attr_accessible :category, :description, :how, :location, :needed, :pay, :start, :title
end
