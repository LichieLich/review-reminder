class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects, dependent: :destroy
  has_many :reviews
  has_many :review_assignments, dependent: :destroy
  has_many :review_performs, dependent: :destroy
  has_many :reviews, through: :review_assignments
  has_many :reviews, through: :review_performs
end
