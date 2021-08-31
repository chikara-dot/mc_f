class Take < ApplicationRecord
  has_many :orders

  validates :name,presence: true
  validates :remaining,presence: true
  validates :lowest,presence: true
end
