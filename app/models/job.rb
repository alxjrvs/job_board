class Job < ActiveRecord::Base
  attr_accessible :category, :description, :how, :location, :needed, :pay, :start, :title,:hours
   validates :category, :title, :description, :how, :location, :needed, :how, :pay, presence: true
   #add :start once I figure out date
   # validates :pay, :numericality => { :greater_than => 8 }
end
