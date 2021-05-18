class Position < ApplicationRecord
  belongs_to :platform
  has_many :ads
end
