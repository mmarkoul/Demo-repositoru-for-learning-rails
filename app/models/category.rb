class Category < ActiveRecord::Base
  attr_accessible :description, :title
  has_and_belongs_to_many :links
  validates_presence_of :title
end
