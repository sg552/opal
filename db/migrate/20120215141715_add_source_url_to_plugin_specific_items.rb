class AddSourceUrlToPluginSpecificItems < ActiveRecord::Migration
  def change
    add_column :plugin_specific_items, :source_url, :text
  end
end
