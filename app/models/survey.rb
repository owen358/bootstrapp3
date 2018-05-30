class Survey < ApplicationRecord
  validates :title, presence: true
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions
end
