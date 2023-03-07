class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :published, :user_id, :category_id,:img,:created_at, :updated_at
  belongs_to :user
  has_many :comments
  belongs_to :category
end
