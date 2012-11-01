class Project < ActiveRecord::Base
  attr_accessible :description, :title
  attr_accessible :description, :title, :user_id, :as => :system
  belongs_to :user
  has_many :issues
end
