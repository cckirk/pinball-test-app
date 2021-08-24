class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment, :high_score, :user, :address
end
