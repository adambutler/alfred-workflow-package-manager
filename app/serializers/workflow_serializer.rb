class WorkflowSerializer < ActiveModel::Serializer
  attributes :id, :title, :git_repository_url
end
