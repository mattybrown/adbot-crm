class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :department
      t.string :phone
      t.string :mobile
      t.string :email

      t.belongs_to :client
      t.timestamps
    end
  end
end
