class Registration < ActiveRecord::Base
  #validations
  validates_presence_of :link
  validates_uniqueness_of :link

  # relations 
  belongs_to :authentication
end