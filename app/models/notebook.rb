class Notebook < ApplicationRecord
  # attr_accessor :id, :title, :body
  belongs_to :user
end
