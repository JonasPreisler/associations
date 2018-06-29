class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :name
      t.belongs_to :address, foreign_key: true
      t.belongs_to :place, foreign_key: true

      t.timestamps
    end
  end
end
