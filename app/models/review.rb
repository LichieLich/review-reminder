class Review < ApplicationRecord

  belongs_to :project
  belongs_to :user
  has_many :review_assignments, dependent: :destroy
  has_many :assignees, through: :review_assignments, source: :user
  has_many :review_performs, dependent: :destroy
  has_many :reviewers, through: :review_performs, source: :user
end