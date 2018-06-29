class AddOption1ToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :option_1, :string
  end
end
