class Email < ActiveRecord::Base
  attr_accessible :email, :name, :surname

  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true

end
