class AddUpdatedByToAds < ActiveRecord::Migration[6.1]
  def change
    add_column :ads, :updated_by, :integer, null: false, default: 1
  end
end
