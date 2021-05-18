class Ad < ApplicationRecord
  belongs_to :position
  belongs_to :client
  belongs_to :user
end
