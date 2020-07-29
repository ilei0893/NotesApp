class NotebookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :body
  has_many :user
end
