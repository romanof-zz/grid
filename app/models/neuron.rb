class Neuron < ActiveRecord::Base
  # validators
  validates_presence_of :name
  validates_uniqueness_of :name

  # relations
  has_one :authentication
end