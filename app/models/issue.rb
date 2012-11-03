class Issue < ActiveRecord::Base
  attr_accessor :creator
  attr_accessible :description, :project_id, :title
  attr_accessible :spent_time, :as => :system

  belongs_to :project
  has_one :time_tracker

  validates :title, :presence => true
  validate :manage_only_own_projects

  def time_spent_str
    total = spent_time + (time_tracker.try(:hours_spent) || 0)
    hours = total.to_i
    minutes = ((total - hours) * 60).to_i
    hours.to_s + ':' + minutes.to_s.rjust(2, '0')
  end

  protected

  def manage_only_own_projects
    errors.add(:base, 'You can manage only own projects') if (self.creator != Project.find(self.project_id).user)
  end


end
