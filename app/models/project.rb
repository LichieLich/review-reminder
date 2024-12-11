class Project < ApplicationRecord
  extend Enumerize

  belongs_to :user
  has_many :reviews

  enumerize :platform, in: %i[gitlab github]
  validates :link, presence: true
end
