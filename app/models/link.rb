class Link < ActiveRecord::Base
  attr_accessible :description, :title, :url,:category_ids
  has_and_belongs_to_many :categories
  validates_presence_of :title
end
