class Autentication < ActiveRecord::Base
  # validators
  validates :email, :allow_blank => false,
                    :uniqueness => { :case_sensitive => false },
                    :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

  # relations
  belongs_to :neuron
end