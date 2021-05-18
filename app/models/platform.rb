class Platform < ApplicationRecord
  belongs_to :organisation
  has_many :positions
  has_many :targets
end
