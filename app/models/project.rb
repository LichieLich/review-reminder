class Project < ApplicationRecord
  extend Enumerize

  belongs_to :user

  enumerize :platform, in: %i[gitlab github]
  validates :link, presence: true
end
