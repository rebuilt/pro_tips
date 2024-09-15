class Tip < ApplicationRecord
  belongs_to :user
  has_many   :comments
  
  has_and_belongs_to_many :users

  validates :title, presence: true,
                    length: { maximum: 100 }
  validates :body,  presence: true
end
