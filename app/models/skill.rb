class Skill < ApplicationRecord
  has_and_belongs_to_many :firms, dependent: :destroy
  belongs_to :user
  has_ancestry

  scope :status, -> {
    where(:status => false)
  }
end
