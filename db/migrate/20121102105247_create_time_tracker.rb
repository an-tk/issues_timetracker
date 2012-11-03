class CreateTimeTracker < ActiveRecord::Migration
  def change
    create_table :time_trackers do |t|
      t.integer :issue_id
      t.datetime :started_at
    end
    add_column :issues, :spent_time, :float, :default => 0
  end
end
