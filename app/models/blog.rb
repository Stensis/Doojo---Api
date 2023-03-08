class Blog < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, through: :users
  #  dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true
end
