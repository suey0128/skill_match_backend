class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :event_date, :location, :image, :recruiter_id
  # , :job_seeker
end
