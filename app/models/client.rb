class Client < ApplicationRecord
  belongs_to :organisation
  belongs_to :user

  has_many :contacts
  has_many :ads

end
