class Spree::Post < ActiveRecord::Base
  validates_presence_of :description
#  validates_length_of :description, :maximum => 150

  scope :published, lambda { where(:published => true) }
end
