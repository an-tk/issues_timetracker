class Issue < ActiveRecord::Base
  attr_accessible :description, :project_id, :title
end
