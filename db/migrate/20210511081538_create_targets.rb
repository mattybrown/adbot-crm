class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.string :name
      t.decimal :figure

      t.belongs_to :platform
      t.timestamps
    end
  end
end
