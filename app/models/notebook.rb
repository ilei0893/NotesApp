class Notebook < ApplicationRecord
  validates :title, :body, presence: true
  has_many :notebook_users
  has_many :users, through: :notebook_users
end
