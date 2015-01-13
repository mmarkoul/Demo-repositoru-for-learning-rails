class Message < ActiveRecord::Base
  attr_accessible :body, :company, :email, :name, :phone, :subject
  validates_presence_of :name, :subject, :body
validates_format_of :email, :with => /^(\S+)@(\S+)\.(\S+)$/
end

