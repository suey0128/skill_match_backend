class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_type
end
