class RecruiterSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :company_name, :username, :password, :email, :logo, :profile, :skills, :view_skills, :events, :view_events, :job_seekers, :all_matching_job_seekers
end
