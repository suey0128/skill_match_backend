class Skill < ApplicationRecord
    belongs_to :profile
end

# below works
# Skill.first.profile