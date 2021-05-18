class Organisation < ApplicationRecord
  has_many :users
  has_many :clients
  has_many :platforms
end
