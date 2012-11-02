class Project < ActiveRecord::Base
  attr_accessible :description, :title, :user_id
  belongs_to :user
  has_many :issues, :dependent => :destroy

  validates :title, :presence => true
end
