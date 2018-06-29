class AddOption1AndOption2AndOption3ToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :option_1, :string
    add_column :addresses, :option_2, :string
    add_column :addresses, :option_3, :string
  end
end
