class Spree::Post < ActiveRecord::Base
  validates_presence_of :title, :description
#  validates_length_of :description, :maximum => 150

  attr_accessible :title, :description, :published

  scope :published, lambda { where(:published => true) }
  scope :latest, order("created_at DESC").limit(3)
end
