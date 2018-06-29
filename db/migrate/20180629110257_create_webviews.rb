class CreateWebviews < ActiveRecord::Migration[5.2]
  def change
    create_table :webviews do |t|
      t.string :name

      t.timestamps
    end
  end
end
