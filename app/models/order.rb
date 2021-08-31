class Order < ApplicationRecord
  belongs_to :take
  
  validates :user_name,presence: true
  validates :take_out,presence: true
end
