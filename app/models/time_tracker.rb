class TimeTracker < ActiveRecord::Base
  attr_accessible :issue_id, :started_on, :as => :system
  belongs_to :issue
  validates_presence_of :issue_id

  def initialize(arguments = nil, options = {})
    super(arguments, options)
    self.started_at = Time.now
  end

  def hours_spent
    ((Time.now.to_i - started_at.to_i) / 3600.0).to_f
  end

end
