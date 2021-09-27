class AddEvent < ApplicationRecord
    belongs_to :job_seeker
    belongs_to :event

    # below works:
    # AddEvent.first.event
    # AddEvent.first.job_seeker
end
