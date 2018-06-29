class AddWebviewIdToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :webview_id, :integer
  end
end
