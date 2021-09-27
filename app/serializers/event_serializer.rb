class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :event_date, :location, :image, :recruiter, :job_seeker
end
