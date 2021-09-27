class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_id, :level, :user_type, :skill_owner
end
