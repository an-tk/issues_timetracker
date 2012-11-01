namespace :fake_data  do
  desc 'Removing all users, projects, issues and generate fake ones'
  task :generate => :environment do
    User.delete_all
    Project.delete_all
    Issue.delete_all
    u1 = User.create(:email => 'supadm.fs@gmail.com', :password => '25112511q')
    u2 = User.create(:email => 'noggano.fs@gmail.com', :password => '25112511q')

    p1 = Project.create({:title => 'Project 1', :description => 'project 1 description', :user_id => u1.id}, :as => :system)
    p2 = Project.create({:title => 'Project 2', :description => 'project 2 description', :user_id => u2.id}, :as => :system)
    p3 = Project.create({:title => 'Project 3', :description => 'project 3 description', :user_id => u1.id}, :as => :system)

    Issue.create(:title => 'Project 1 Issue 1', :description => 'Issue description', :project_id => p1.id)
    Issue.create(:title => 'Project 1 Issue 2', :description => 'Issue description', :project_id => p1.id)
    Issue.create(:title => 'Project 1 Issue 3', :description => 'Issue description', :project_id => p1.id)

    Issue.create(:title => 'Project 2 Issue 1', :description => 'Issue description', :project_id => p2.id)
    Issue.create(:title => 'Project 2 Issue 2', :description => 'Issue description', :project_id => p2.id)
    Issue.create(:title => 'Project 2 Issue 3', :description => 'Issue description', :project_id => p2.id)

    Issue.create(:title => 'Project 3 Issue 1', :description => 'Issue description', :project_id => p3.id)
    Issue.create(:title => 'Project 3 Issue 2', :description => 'Issue description', :project_id => p3.id)
    Issue.create(:title => 'Project 3 Issue 3', :description => 'Issue description', :project_id => p3.id)
  end
end
