class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website
      
      t.belongs_to :organisation
      t.timestamps
    end
  end
end
