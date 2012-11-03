class TimeTrackersController < ApplicationController
  def start
    TimeTracker.create({:issue_id => issue.id}, :as => :system)
    respond_to do |format|
      format.js { render :partial => 'actions', :locals => {:issue => issue} }
    end
  end

  def stop
    @time_tracker = issue.time_tracker
    issue.update_column :spent_time, (@time_tracker.hours_spent + issue.spent_time).round(2)
    @time_tracker.destroy
    respond_to do |format|
      format.js { render :partial => 'actions', :locals => {:issue => issue} }
    end
  end

  protected

  def issue
    current_user.issues.find(params[:issue_id])
  end

end
