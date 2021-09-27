class JobSeekerSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :username, :password, :email, :image, :profile_id, :skills, :view_skills, :events, :view_events, :recruiters, :all_matching_recruiters, :all_matching_events
end
