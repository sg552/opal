class RenameVendorNameToVendorIdForSpecificItems < ActiveRecord::Migration
  def up
    remove_column :plugin_specific_items, :vendor_name
    add_column :plugin_specific_items, :vendor_id, :integer

    # also add source website
    add_column :plugin_specific_items, :source_website_name, :string
  end

  def down
    remove_column :plugin_specific_items, :source_website_name

    remove_column :plugin_specific_items, :vendor_id
    add_column :plugin_specific_items, :vendor_name, :string
  end
end
