class Upload < ActiveRecord::Base
  belongs_to :user
  attr_accessible :document
  has_attached_file :document   
end
