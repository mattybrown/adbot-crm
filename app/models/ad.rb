class Ad < ApplicationRecord
  belongs_to :position
  belongs_to :client
  belongs_to :user

  def self.in_publication_range(start_date, end_date)
    where("rundate >= ? AND rundate <= ?", start_date, end_date)
  end

end
