class UserSerializer < ActiveModel::Serializer
  attributes :id, :username,:password, :email, :avatar, :bio, :created_at, :updated_at, :role

  def role
    object.admin ? 'admin' : 'user'
  end
end
