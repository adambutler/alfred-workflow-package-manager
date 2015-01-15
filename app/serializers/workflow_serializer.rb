class WorkflowSerializer < ActiveModel::Serializer
  attributes :title, :git_repository_url
end
