class AddPubFrequencyToPlatform < ActiveRecord::Migration[6.1]
  def change
    add_column :platforms, :daily, :boolean, default: false
    add_column :platforms, :weekly, :boolean, default: true
    add_column :platforms, :monthly, :boolean, default: false
  end
end
