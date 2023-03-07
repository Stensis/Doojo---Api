class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :blog_id, :user_id, :created_at, :updated_at
  belongs_to :user
  belongs_to :blog
end
