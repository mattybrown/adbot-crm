class CreateAds < ActiveRecord::Migration[6.1]
  def change
    create_table :ads do |t|
      t.integer :width
      t.integer :height
      t.string :status
      t.decimal :price
      t.datetime :rundate

      t.belongs_to :client
      t.belongs_to :position
      t.timestamps
    end
  end
end
