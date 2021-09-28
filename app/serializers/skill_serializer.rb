class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_id, :level, :logo
  # :user_type, :skill_owner
end
