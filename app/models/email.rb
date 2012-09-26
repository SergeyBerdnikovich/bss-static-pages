class Email < ActiveRecord::Base
  attr_accessible :email, :name, :surname

  validates :name, :length => { :minimum => 3, :maximum => 15, },
  				   presence: true
  validates :surname, :length => { :minimum => 3, :maximum => 20, },
  					  presence: true
  validates :email, presence: true,
  					:length => { :minimum => 3, :maximum => 50, },
  					:uniqueness => true,
           			:format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
end
