class CreateOrganisations < ActiveRecord::Migration[6.1]
  def change
    create_table :organisations do |t|
      t.string :name
      t.timestamps
    end
  end

  Organisation.create! do |o|
    o.name = 'Test org'
  end
  
end
