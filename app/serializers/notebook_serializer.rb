class NotebookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :body
  belongs_to :user
end
