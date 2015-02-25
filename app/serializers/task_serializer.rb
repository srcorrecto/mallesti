class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :tag, :estimation
end
