class Project < ActiveRecord::Base
  attr_accessor :current_user
  attr_accessible :description, :title

  belongs_to :user
  has_many :issues, :dependent => :destroy

  validates :title, :presence => true

end
