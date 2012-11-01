class Issue < ActiveRecord::Base
  attr_accessible :description, :project_id, :title
  belongs_to :project
end
