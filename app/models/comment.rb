class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :tip

  validates :body, presence: true
end
